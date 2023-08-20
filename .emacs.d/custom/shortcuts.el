;; Kill current buffer
(global-set-key (kbd "C-x x") 'kill-this-buffer)

;; Keyboard yank
(global-set-key (kbd "C-c y") 'clipboard-yank)

;; Revert buffer
(global-set-key (kbd "C-x y") 'revert-buffer)

;; Window moves
(global-set-key (kbd "C-x C-<up>") 'windmove-up)
(global-set-key (kbd "C-x C-<down>") 'windmove-down)

;; (y/n) alias and move to trash
(defalias 'yes-or-no-p 'y-or-n-p)
(setq delete-by-moving-to-trash t)

;; xdg-open
(global-set-key (kbd "C-c p") 'dired-open-file)

;; linum mode
(global-set-key (kbd "C-c l") 'linum-mode)
