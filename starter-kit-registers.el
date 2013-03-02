
(dolist
    (r `((?i (file . ,(concat starter-kit-dir "init.el")))
         (?I (file . ,(let* ((user user-login-name)
                             (org (expand-file-name (concat user ".org") starter-kit-dir))
                             (el  (expand-file-name (concat user ".el") starter-kit-dir))
                             (dir (expand-file-name user starter-kit-dir)))
                        (cond
                         ((file-exists-p org) org)
                         ((file-exists-p el)  el)
                         (t dir)))))
         (?s (file . ,(concat starter-kit-dir "starter-kit.org")))
         (?r (file . ,(concat starter-kit-dir "starter-kit-registers.org")))))
  (set-register (car r) (cadr r)))
