(starter-kit-load "misc-recommended")
(starter-kit-load "org")
(starter-kit-load "js")

(starter-kit-load "ruby")
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(require 'paredit)
(starter-kit-load "lisp")

(require 'mode-compile)
