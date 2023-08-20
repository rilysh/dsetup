(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
			 (require 'lsp-pyright)
			 (lsp))))

(setq lsp-pyright-use-library-code-for-types t) ;; set this to nil if getting too many false positive type errors
(setq lsp-pyright-stub-path (concat (getenv "HOME") ".pystubs")) ;; Path of pystubs
