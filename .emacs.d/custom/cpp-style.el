(defun cpp-namespace-indent ()
  (c-set-offset 'innamespace [0])
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'inline-open 0))

(add-hook 'c++-mode-hook 'cpp-namespace-indent)
