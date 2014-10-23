(starter-kit-load "ruby")
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; flymake-ruby
(setq flymake-ruby-executable "/home/bowes/.rbenv/shims/ruby")
(require 'flymake-ruby)
;; I have no idea why this is required, but it is if you want it to
;; work properly with rbenv..
(add-hook 'ruby-mode-hook 'flymake-ruby-load)


