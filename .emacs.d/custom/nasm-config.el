;; Bind "nasm-mode" with ".inc" files
(setq auto-mode-alist (cons '("\\.inc$" . nasm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.asm$" . nasm-mode) auto-mode-alist))
