;; rinari
(require 'rinari)

;; nxhtml
(load (concat starter-kit-dir "vendor/nxhtml/autostart.el"))

;; html+erb
(add-to-list 'load-path (concat starter-kit-dir "vendor/nxhtml/util"))
(require 'mumamo-fun)
(setq mumamo-chunk-coloring 'submode-colored)
(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . eruby-html-mumamo))
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-html-mumamo))

;; scss
(setq scss-compile-at-save 'nil)
