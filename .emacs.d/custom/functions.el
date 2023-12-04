;; Rename a file including the buffer
;; Source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME"
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)

        (rename-file filename new-name 1)
        (rename-buffer new-name)
        (set-visited-file-name new-name)
        (set-buffer-modified-p nil)))))

;; dired-open-file
;; Comment: In dired, open the file named on this line
(defun dired-open-file ()
  "In dired, open the file named on this line"
  (interactive)
  (let ((file (dired-get-filename nil t)))
    (call-process "xdg-open" nil 0 nil file)
    (message "Opening %s done" file)))

;; c-offset-switch
;; Comment: Switch to 4 characters width offset
(defun c-offset-switch ()
  "Switch to 4 characters width offset"
  (setq c-default-style "linux"
	c-basic-offset 4))

;; print-total-size
;; Comment: Print the total size of a file or a directory
(defun print-total-size (&optional path)
  "Print the total size of a file or a directory"
  (interactive "sPath: ")
  (shell-command (format "du -sh %s" path)))

;; kill-all-buffers
;; Comment: Kill all buffers expect special ones, (i.e. Completions)
(defun kill-all-buffers ()
  "Kill all buffers expect special ones"
  (interactive)
  (dolist (buffer (buffer-list))
    (let ((name (buffer-name buffer)))
      (when (and name (not (string-equal name ""))
		 (/= (aref name 0) ?\s)
		 (string-match "^[^\*]" name))
	(funcall 'kill-buffer buffer)))))

;; transpose-lines emacs
;; This was posted by Andreas Politz (ap) in a Google Group in 2008
;; Source: https://groups.google.com/g/gnu.emacs.help/c/dd2R_UV0LVQ/m/F06ihLb7hKcJ
;; Use (execute-kbd-macro (kbd "<tab>") for automatic tab indentation.
;; move-text-internal
(defun move-text-internal (arg)
  "Move the text region downwards"
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (beginning-of-line)
    (when (or (> arg 0) (not (bobp)))
      (forward-line)
      (when (or (< arg 0) (not (eobp)))
        (transpose-lines arg))
      (forward-line -1)))))

;; move-text-down
;; Move region (transient-mark-mode active) or current line arg lines down
(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down"
  (interactive "*p")
  (move-text-internal arg))

;; move-text-up
;; Move region (transient-mark-mode active) or current line
(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up"
  (interactive "*p")
  (move-text-internal (- arg)))
