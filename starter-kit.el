
(add-to-list 'load-path starter-kit-dir)
(setq autoload-file (concat starter-kit-dir "loaddefs.el"))
(setq package-user-dir (concat starter-kit-dir "elpa"))
(setq custom-file (concat starter-kit-dir "custom.el"))

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("original"    . "http://tromey.com/elpa/")
        ("org"         . "http://orgmode.org/elpa/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")))
(package-initialize)

(defvar starter-kit-packages
  (list 'yasnippet-bundle)
  "Libraries that should be installed by default.")

(unless package-archive-contents
  (package-refresh-contents))
(dolist (package starter-kit-packages)
  (unless (package-installed-p package)
    (package-install package)))

(defun starter-kit-load (file &optional header-or-tag)
  "Load configuration from other starter-kit-*.org files.
If the optional argument is the id of a subtree then only
configuration from within that subtree will be loaded.  If it is
not an id then it will be interpreted as a tag, and only subtrees
marked with the given tag will be loaded.

For example, to load all of starter-kit-lisp.org simply
add (starter-kit-load \"lisp\") to your configuration.

To load only the 'window-system' config from
starter-kit-misc-recommended.org add
 (starter-kit-load \"misc-recommended\" \"window-system\")
to your configuration."
  (let ((file (expand-file-name (if (string-match "starter-kit-.+\.org" file)
                                    file
                                  (format "starter-kit-%s.org" file))
                                starter-kit-dir)))
    (org-babel-load-file
     (if header-or-tag
         (let* ((base (file-name-nondirectory file))
                (dir  (file-name-directory file))
                (partial-file (expand-file-name
                               (concat "." (file-name-sans-extension base)
                                       ".part." header-or-tag ".org")
                               dir)))
           (unless (file-exists-p partial-file)
             (with-temp-file partial-file
               (insert
                (with-temp-buffer
                  (insert-file-contents file)
                  (save-excursion
                    (condition-case nil ;; collect as a header
                        (progn
                          (org-link-search (concat"#"header-or-tag))
                          (org-narrow-to-subtree)
                          (buffer-string))
                      (error ;; collect all entries with as tags
                       (let (body)
                         (org-map-entries
                          (lambda ()
                            (save-restriction
                              (org-narrow-to-subtree)
                              (setq body (concat body "\n" (buffer-string)))))
                          header-or-tag)
                         body))))))))
           partial-file)
       file))))

(if (eq system-type 'darwin)
    (setq system-name (car (split-string system-name "\\."))))

(starter-kit-load "starter-kit-defuns.org")

(starter-kit-load "starter-kit-bindings.org")

(starter-kit-load "starter-kit-misc.org")

(starter-kit-load "starter-kit-registers.org")

(add-to-list 'load-path
             (expand-file-name  "yasnippet"
                                (expand-file-name "src"
                                                  starter-kit-dir)))
(require 'yasnippet)
(yas/initialize)

(yas/load-directory (expand-file-name "snippets" starter-kit-dir))

(defun yas/org-very-safe-expand ()
  (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

(defun yas/org-setup ()
  ;; yasnippet (using the new org-cycle hooks)
  (make-variable-buffer-local 'yas/trigger-key)
  (setq yas/trigger-key [tab])
  (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
  (define-key yas/keymap [tab] 'yas/next-field))

(add-hook 'org-mode-hook #'yas/org-setup)

(flet ((sk-load (base)
         (let* ((path          (expand-file-name base starter-kit-dir))
                (literate      (concat path ".org"))
                (encrypted-org (concat path ".org.gpg"))
                (plain         (concat path ".el"))
                (encrypted-el  (concat path ".el.gpg")))
           (cond
            ((file-exists-p encrypted-org) (org-babel-load-file encrypted-org))
            ((file-exists-p encrypted-el)  (load encrypted-el))
            ((file-exists-p literate)      (org-babel-load-file literate))
            ((file-exists-p plain)         (load plain)))))
       (remove-extension (name)
         (string-match "\\(.*?\\)\.\\(org\\(\\.el\\)?\\|el\\)\\(\\.gpg\\)?$" name)
         (match-string 1 name)))
  (let ((elisp-dir (expand-file-name "src" starter-kit-dir))
        (user-dir (expand-file-name user-login-name starter-kit-dir)))
    ;; add the src directory to the load path
    (add-to-list 'load-path elisp-dir)
    ;; load specific files
    (when (file-exists-p elisp-dir)
      (let ((default-directory elisp-dir))
        (normal-top-level-add-subdirs-to-load-path)))
    ;; load system-specific config
    (sk-load system-name)
    ;; load user-specific config
    (sk-load user-login-name)
    ;; load any files in the user's directory
    (when (file-exists-p user-dir)
      (add-to-list 'load-path user-dir)
      (mapc #'sk-load
            (remove-duplicates
             (mapcar #'remove-extension
                     (directory-files user-dir t ".*\.\\(org\\|el\\)\\(\\.gpg\\)?$"))
             :test #'string=)))))

(load custom-file 'noerror)
