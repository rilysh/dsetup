;; Support shift-selection for all four arrow keys
;; (setq org-support-shift-select t)

(setq org-replace-disputed-keys t)
(add-hook 'org-mode-hook
          (lambda ()
            (setq org-support-shift-select 'always)))

(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

;; Remove validation link when exporting an org file
(setq org-html-validation-link nil)

;; Disable the default CSS to being exported
(setq org-html-head-include-default-style nil)
