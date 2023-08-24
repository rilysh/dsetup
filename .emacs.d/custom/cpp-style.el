;; C++ namespace style
(defun cpp-style ()
   (c-set-offset 'innamespace [4]))

(add-hook 'c++-mode-hook 'cpp-style)
