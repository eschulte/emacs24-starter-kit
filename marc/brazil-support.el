(defun brazil-parent-directory (a-directory)
"Returns the directory of which a-directory is a child"
(file-name-directory (directory-file-name a-directory)))
 
(defun brazil-root-directory-p (a-directory)
"Returns t if a-directory is the root"
(equal a-directory (brazil-parent-directory a-directory)))
 
(defun brazil-project-root (&optional directory)
"Finds the root directory of the project by walking the directory tree until it finds a Config."
(let ((directory (file-name-as-directory (or directory default-directory))))
(cond ((brazil-root-directory-p directory)
(error "Could not determine the project root."))
((file-exists-p (expand-file-name "Config" directory)) directory)
(t (brazil-project-root (file-name-directory (directory-file-name directory)))))))
 
(provide 'brazil-support)
