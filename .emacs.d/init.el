;; Packages
;; =========
;; elfeed lsp-mode lsp-ui lsp-pyright markdown-mode
;; markdown-preview-mode multiple-cursors python-mode
;; simpleclip use-package dyalog-mode go-mode yaml-mode
;; impatient-mode cmake-mode exec-path-from-shell
;; flycheck-rust gruvbox-theme nasm-mode org-preview-html
;; rustic vterm git-commit clang-format+

;; Add melpa repo
(defun add-melpa-repo ()
  (require 'package)
  (add-to-list 'package-archives
	       '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize))

;; Set the default theme
;; Load it before even everything starts
(defun set-default-theme ()
  (load-theme 'tango-dark t))

;; Load all elisp files in a directory
(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(add-melpa-repo)
(set-default-theme)
(load-directory "~/.emacs.d/custom")
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(yaml-mode vterm use-package simpleclip rustic python-mode org-preview-html nasm-mode multiple-cursors lsp-pyright gruvbox-theme go-mode git-commit flycheck-rust exec-path-from-shell elfeed dyalog-mode company cmake-mode clang-format+)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
