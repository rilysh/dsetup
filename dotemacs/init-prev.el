;; Basic configration
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Add melpa repo 
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Simpleclip
(require 'simpleclip)
(simpleclip-mode 1)

;; Ido mode
(ido-mode 1)

;; Explicitly enable basic linux coding style
(setq c-default-style "linux"
      c-basic-offset 4)

(setq column-number-mode t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Locate the folder and enable evil-mode 
;; (add-to-list 'load-path "/home/rilysh/.emacs.d/evil")
;; (require 'evil)
;; (evil-mode 1)
(put 'upcase-region 'disabled nil)

;; Rename a file including the buffer
;; Source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

;; Set keybinding for closing current buffer
(global-set-key (kbd "C-x x") 'kill-this-buffer)

;; Keyboard yank
(global-set-key (kbd "C-c y") 'clipboard-yank)

;; Revert buffer
(global-set-key (kbd "C-x y") 'revert-buffer)

;; Set theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(package-selected-packages '(yasnippet company markdown-mode simpleclip))
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
