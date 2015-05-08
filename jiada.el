(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(font-use-system-font t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;starter-kit 
(starter-kit-load "python")
(starter-kit-load "ruby")
(starter-kit-load "eshell")
(starter-kit-load "org")
;;(require 'window-numbering)
(window-numbering-mode 1)
;;(setq window-numbering-assign-func
;;      (lambda () (when (equal (buffer-name) "*shell*") 9)))

;;默认启动shell buffer
;; (dired "~/Dropbox/org")
;; (dired-sort-toggle-or-edit)
;; (split-window-right)
;; (other-window)
;; (calendar)


;; org-mode

;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/应用/MobileOrg")
(setq org-default-notes-file (concat org-directory "/todo.org"))
     (define-key global-map "\C-cc" 'org-capture)

(setq org-todo-keywords
       '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
(setq org-todo-keywords
           '((sequence "TODO(t)" "|" "DONE(d)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
             (sequence "|" "CANCELED(c)")))
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; (define-key mode-specific-map [?a] 'org-agenda)

;; (eval-after-load "org"
;;   '(progn
;;      ;; todo state
;;      (define-prefix-command 'org-todo-state-map)

;;      (define-key org-mode-map "\C-cx" 'org-todo-state-map)

;;      (define-key org-todo-state-map "x"
;;        #'(lambda nil (interactive) (org-todo "CANCELLED")))
;;      (define-key org-todo-state-map "d"
;;        #'(lambda nil (interactive) (org-todo "DONE")))
;;      (define-key org-todo-state-map "f"
;;        #'(lambda nil (interactive) (org-todo "DEFERRED")))
;;      (define-key org-todo-state-map "l"
;;        #'(lambda nil (interactive) (org-todo "DELEGATED")))
;;      (define-key org-todo-state-map "s"
;;        #'(lambda nil (interactive) (org-todo "STARTED")))
;;      (define-key org-todo-state-map "w"
;;        #'(lambda nil (interactive) (org-todo "WAITING")))

;;      (define-key org-agenda-mode-map "\C-n" 'next-line)
;;      (define-key org-agenda-keymap "\C-n" 'next-line)
;;      (define-key org-agenda-mode-map "\C-p" 'previous-line)
;;      (define-key org-agenda-keymap "\C-p" 'previous-line)))

;; custom agenda view
;; (custom-set-variables
;;  '(org-agenda-files (quote ("~/todo.org")))
;;  '(org-default-notes-file "~/notes.org")
;;  '(org-agenda-ndays 7)
;;  '(org-deadline-warning-days 14)
;;  '(org-agenda-show-all-dates t)
;;  '(org-agenda-skip-deadline-if-done t)
;;  '(org-agenda-skip-scheduled-if-done t)
;;  '(org-agenda-start-on-weekday nil)
;;  '(org-reverse-note-order t)
;;  '(org-fast-tag-selection-single-key (quote expert))
;;  '(org-agenda-custom-commands
;;    (quote (("d" todo "DELEGATED" nil)
;; 	   ("c" todo "DONE|DEFERRED|CANCELLED" nil)
;; 	   ("w" todo "WAITING" nil)
;; 	   ("W" agenda "" ((org-agenda-ndays 21)))
;; 	   ("A" agenda ""
;; 	    ((org-agenda-skip-function
;; 	      (lambda nil
;; 		(org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]")))
;; 	     (org-agenda-ndays 1)
;; 	     (org-agenda-overriding-header "Today's Priority #A tasks: ")))
;; 	   ("u" alltodo ""
;; 	    ((org-agenda-skip-function
;; 	      (lambda nil
;; 		(org-agenda-skip-entry-if (quote scheduled) (quote deadline)
;; 					  (quote regexp) "\n]+>")))
;; 	     (org-agenda-overriding-header "Unscheduled TODO entries: "))))))

;; my key map
(global-set-key [f1] 'shell)


;;Semx
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; python
(add-to-list 'auto-mode-alist '("\\.pyw\\'" . python-mode))
(setq python-shell-interpreter "python3")


;; ruby
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
