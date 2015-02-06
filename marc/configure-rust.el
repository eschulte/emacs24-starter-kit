;; racer -- completion
(starter-kit-install-if-needed 'company)
(setq racer-rust-src-path (concat (getenv "HOME") "/code/rust/rust/src"))
(setq racer-cmd (concat (getenv "HOME") "/code/rust/racer/bin/racer"))
(add-to-list 'load-path (concat (getenv "HOME") "/code/rust/racer/editors"))
(eval-after-load "rust-mode" '(require 'racer))
