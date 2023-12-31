; Load all elisp files in a directory
(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/custom")
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("30df7ea949ac3764ad6c885f1dc1a32209987598b6e42bfc5f443e45f5d87f84" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "7b8f5bbdc7c316ee62f271acf6bcd0e0b8a272fdffe908f8c920b0ba34871d98" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" default))
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(kanagawa-theme timu-macos-theme gruvbox-theme magit flycheck-rust go-mode rustic rust-mode markdown-preview-mode multiple-cursors yasnippet company markdown-mode simpleclip compat multiple-cursors yaml-mode weblorg exec-path-from-shell python-mode ## zig-mode impatient-mode))
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
