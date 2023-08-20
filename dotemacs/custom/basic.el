;; UI configration
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Ido mode
(ido-mode 1)

;; Disable upcase-region
(put 'upcase-region 'disabled nil)

;; Display line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Set color of statusbar
(set-face-foreground 'mode-line "#606060")
(set-face-background 'mode-line "#202020")
