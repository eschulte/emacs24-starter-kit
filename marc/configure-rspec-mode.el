;;; Brazil
(require 'brazil-support)

;;; Rspec - requires .24
(require 'rspec-mode)
(add-hook 'ruby-mode-hook 'rspec-mode)

(defcustom rspec-use-brazil-when-possible t
  "When t and Config is present, run specs with 'brazil-test-exec'."
  :type 'boolean
  :group 'rspec-mode)

(defun rspec-brazil-p ()
  (and rspec-use-brazil-when-possible
       (file-readable-p (concat (brazil-project-root) "Config"))))

(defun rspec-runner ()
  "Returns command line to run rspec"
  (let ((brazil-command (if (rspec-brazil-p) "/apollo/env/SDETools/bin/brazil-test-exec " ""))
        (bundle-command (if (rspec-bundle-p) "bundle exec " ""))
        (zeus-command (if (rspec-zeus-p) "zeus " nil))
        (spring-command (if (rspec-spring-p) "spring " nil)))
    (concat (or brazil-command zeus-command spring-command bundle-command)
            (if (rspec-rake-p)
                (concat rspec-rake-command " spec")
              rspec-spec-command))))
