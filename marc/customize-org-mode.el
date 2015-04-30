(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(add-to-list 'load-path (concat starter-kit-dir "vendor/orgmode-mediawiki"))
(require 'ox-mediawiki)

