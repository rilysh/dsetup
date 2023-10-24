;; (y/n) alias and move to trash
(defalias 'yes-or-no-p 'y-or-n-p)
(setq delete-by-moving-to-trash t)

;; Kill current buffer
(global-set-key (kbd "C-x x") 'kill-this-buffer)

;; Keyboard yank
(global-set-key (kbd "C-c y") 'clipboard-yank)

;; Revert buffer
(global-set-key (kbd "C-x y") 'revert-buffer)

;; Window moves
(global-set-key (kbd "C-x C-<up>") 'windmove-up)
(global-set-key (kbd "C-x C-<down>") 'windmove-down)

;; xdg-open
(global-set-key (kbd "C-c p") 'dired-open-file)

;; linum mode
(global-set-key (kbd "C-c l") 'linum-mode)

;; Write-able dired mode
(global-set-key (kbd "C-c C-e") 'wdired-change-to-wdired-mode)
(global-set-key (kbd "C-c C-w") 'wdired-finish-edit)
(global-set-key (kbd "C-c C-a") 'wdired-exit)

;; C-offset-switch function call
(global-set-key (kbd "C-c C-l") 'c-offset-switch)

;; move-text-up for moving text region upwards or move-text-down to move text region downwards
(global-set-key (kbd "M-<up>") 'move-text-up)
(global-set-key (kbd "M-<down>") 'move-text-down)
