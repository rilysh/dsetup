;; UI configration
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Ido mode
(ido-mode t)

;; Disable upcase-region
(put 'upcase-region 'disabled nil)

;; Display line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Set color of statusbar
;; (set-face-foreground 'mode-line "#606060")
;; (set-face-background 'mode-line "#202020")
;; Set cursor color
(add-hook 'after-init-hook
	  (lambda ()
	    (set-face-attribute 'mode-line nil
				:box nil
				:background "#130A03"
				:foreground "#B8B4B9")
	    (set-cursor-color "#ed9d6f")))

;; (custom-set-faces
;;  '(minibuffer-prompt ((t (:background "black" :foreground "yellow")))))

;; Fullscreen default window
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(global-display-line-numbers-mode t)
(set-frame-font "Menlo" nil t)
