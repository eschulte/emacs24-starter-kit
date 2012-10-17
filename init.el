;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

;; remember this directory
(setq starter-kit-dir
      (file-name-directory (or load-file-name (buffer-file-name))))

(let ((elisp-dir (expand-file-name "src" starter-kit-dir)))
    ;; add the src directory to the load path
    (add-to-list 'load-path elisp-dir)
    ;; load specific files
    (when (file-exists-p elisp-dir)
      (let ((default-directory elisp-dir))
        (normal-top-level-add-subdirs-to-load-path))))
 
;; load up the starter kit
(org-babel-load-file (expand-file-name "starter-kit.org" starter-kit-dir))

;;; init.el ends here
