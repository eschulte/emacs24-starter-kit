(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(require 'flymake-haml)
(add-hook 'haml-mode-hook 'flymake-haml-load)
