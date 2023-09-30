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
;; (set-face-foreground 'mode-line "#606060")
;; (set-face-background 'mode-line "#202020")

(add-hook 'after-init-hook
	  (lambda ()
	    (set-face-attribute 'mode-line nil
				:box nil
				:background "#130A03"
				:foreground "#B8B4B9")))
;; (custom-set-faces
;;  '(minibuffer-prompt ((t (:background "black" :foreground "yellow")))))

(global-display-line-numbers-mode 1)

;; Set fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
