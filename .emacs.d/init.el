; Load all elisp files in a directory
(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/custom")

(put 'downcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#130A03" :foreground "#B8B4B9")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("082d681b31ef1b18ac57ea2c67bcd54b6c2d4eda52519c4e3d71f95af5b69c8b" default))
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(go-mode lsp-ui rustic rust-mode markdown-preview-mode multiple-cursors yasnippet company markdown-mode simpleclip compat multiple-cursors yaml-mode weblorg exec-path-from-shell python-mode ## zig-mode impatient-mode))
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp))))
