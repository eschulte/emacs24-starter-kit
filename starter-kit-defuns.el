
(defun starter-kit-local-column-number-mode ()
  (make-local-variable 'column-number-mode)
  (column-number-mode t))

(defun starter-kit-local-comment-auto-fill ()
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

(defun starter-kit-turn-on-save-place-mode ()
  (setq save-place t))

(defun starter-kit-turn-on-whitespace ()
  (whitespace-mode t))

(add-hook 'starter-kit-coding-hook 'starter-kit-local-column-number-mode)

(add-hook 'starter-kit-coding-hook 'starter-kit-local-comment-auto-fill)

(when (window-system)
  (add-hook 'starter-kit-coding-hook 'starter-kit-pretty-lambdas))

(defun run-starter-kit-coding-hook ()
  "Enable things that are convenient across all coding buffers."
  (run-hooks 'starter-kit-coding-hook))

(defun recentf-ido-find-file () 
  "Find a recent file using Ido." 
  (interactive) 
  (let* ((file-assoc-list 
          (mapcar (lambda (x) 
                    (cons (file-name-nondirectory x) 
                          x)) 
                  recentf-list)) 
         (filename-list 
          (remove-duplicates (mapcar #'car file-assoc-list) 
                             :test #'string=)) 
         (filename (ido-completing-read "Choose recent file: " 
                                        filename-list 
                                        nil 
                                        t))) 
    (when filename 
      (find-file (cdr (assoc filename 
                             file-assoc-list))))))
