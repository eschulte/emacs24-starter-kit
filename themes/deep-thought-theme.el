;;; deep-thought-theme.el --- Emacs 24 theme with the Answer to The Ultimate Question
;;;
;;; Author: Jason Milkins <jasonm23@gmail.com>
;;; Url: https://github.com/jasonm23/emacs-deep-thought-theme
;;; Version: 0.1.1
;;;
;;; Changelog :
;;; 0.1.1 : Updated modeline, region, paren-match/mismatch and flymake colors.
;;; 0.1.0 : Added rainbow-mode switch for editing
;;; 0.0.9 : Changed powerline/main-line colors
;;; 0.0.8 : Added main-line and powerline support
;;; 0.0.7 : Added auto load for adding to custom theme path
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, version 3 of the License.
;;;
;;; This file is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Emacs.
;;;
;;; This file is not a part of Emacs
;;; http://emacsfodder.github.com
;;;

(deftheme deep-thought
  "deep-thought-theme By: Jason Milkins - emacsfodder.github.com")

(custom-theme-set-variables
 'deep-thought
 '(main-line-color1 "#191919")
 '(main-line-color2 "#111111")
 '(powerline-color1 "#191919")
 '(powerline-color2 "#111111")
 '(fringe-mode 6 nil (fringe))
 '(linum-format " %7d ")
 )

(custom-theme-set-faces
 'deep-thought

 '(default
   (
    (((class color) (min-colors 16777216)) (:foreground "#fff" :background "#000F14"))
    (((class color) (min-colors 88))       (:foreground "#fff" :background "#000"))
    (((class color) (min-colors 16))       (:foreground "#fff" :background "#000"))
    (((class color) (min-colors 8))        (:foreground "#fff" :background "#000")))
   )

 '(fixed-pitch
   ((t (:family "Monospace"))))

 '(variable-pitch
   ((t (:family "Sans Serif"))))

 '(escape-glyph
   ((t (:foreground "#FFF" :background "#111d3c"))))

 ;; Line Numbers (linum-mode)
 '(linum
   ((t (:background "#051019" :foreground "#203047" :box nil :height 100))))

 ;; Margin Fringes
 '(fringe
   ((t ( :background "#001520" :Foreground "#206080" ))))

 ;; Mode-line / status line
 '(mode-line
   ((t (:background "#001520" :box nil :foreground "#FFFFFF" :height 85))))

 '(mode-line-inactive
   ((t (:weight light :box nil :background "#001520" :foreground "#000000" :inherit (mode-line)))))

 '(mode-line-emphasis
   ((t (:weight bold))))

 '(mode-line-highlight
   ((t (:box nil (t (:inherit (highlight)))))))

 '(mode-line-buffer-id
   ((t (:weight bold :box nil))))

 ;; Cursor
 '(cursor
   ((t (:foreground "#ffffff" :background "#3748A0"))))

 ;; Minibuffer
 '(minibuffer-prompt
   ((t (:weight bold :foreground "#208ae2"))))

 '(minibuffer-message
   ((t (:foreground "#ffffff"))))

 ;; Region
 '(region
   ((t (:background "#102530"))))

 ;; show-paren-mode
 '(show-paren-match ((t (:foreground "#fff" :background "#256" ))))
 '(show-paren-mismatch ((t (:foreground "#fff" :background "#700" ))))

 ;; flymake
 '(flymake-errline ((t (:underline "#881100" :background nil :slant italic ))))
 '(flymake-warnline ((t (:underline "#345197" :background nil :slant italic ))))

 ;; ---- add more mode customizations in due course.

 ;; Secondary region
 '(secondary-selection
   ((((class color) (min-colors 88) (background dark)) (:background "#144083"))))

 ;; font-lock - syntax
 '(font-lock-builtin-face              ((t (:foreground "#106590"))))
 '(font-lock-comment-face              ((t (:foreground "#105f89" :italic t ))))
 '(font-lock-comment-delimiter-face    ((t (:foreground "#1078a2" :italic t ))))
 '(font-lock-doc-face                  ((t (:inherit (font-lock-string-face)))))
 '(font-lock-function-name-face        ((t (:foreground "#1083be"))))
 '(font-lock-keyword-face              ((t (:foreground "#1a8da7"))))
 '(font-lock-preprocessor-face         ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face               ((t (:foreground "#10adee"))))
 '(font-lock-constant-face             ((t (:foreground "#1a99e7"))))
 '(font-lock-type-face                 ((t (:foreground "#1f5e8a"))))
 '(font-lock-variable-name-face        ((t (:foreground "#1e8eb8"))))
 '(font-lock-warning-face              ((t (:weight bold :foreground "#FF0000"))))
 '(font-lock-negation-char-face        ((t (:inherit font-lock-warning-face))))

 ;; Hightlight
 '(highlight
   ((((class color) (min-colors 88) (background light)) (:background "#103453"))
    (((class color) (min-colors 88) (background dark)) (:background "#113450")) 
    (((class color) (min-colors 16) (background light)) (:background "#103450"))
    (((class color) (min-colors 16) (background dark)) (:background "#104560"))
    (((class color) (min-colors 8)) (:foreground "#000000" :background "#1050a0")) (t (:inverse-video t))))

 '(shadow
   ((((class color grayscale) (min-colors 88) (background light)) (:foreground "#999999"))
    (((class color grayscale) (min-colors 88) (background dark)) (:foreground "#999999"))
    (((class color) (min-colors 8) (background light)) (:foreground "#a0a0a0"))
    (((class color) (min-colors 8) (background dark)) (:foreground "#1a7aba"))))

 '(trailing-whitespace
   ((((class color) (background light)) (:background "#ff0000"))
    (((class color) (background dark)) (:background "#ff0000")) (t (:inverse-video t))))


 '(link (
         (((class color) (min-colors 88) (background light)) (:underline t :foreground "#1057f0")) 
         (((class color) (background light)) (:underline t :foreground "#1044a0")) 
         (((class color) (min-colors 88) (background dark))  (:underline t :foreground "#1069aa")) 
         (((class color) (background dark))  (:underline t :foreground "#1069aa")) (t (:inherit (underline)))))

 '(link-visited ((default (:inherit (link))) 
                 (((class color) (background light)) (:inherit (link))) 
                 (((class color) (background dark)) (:inherit (link)))))

 '(button ((t (:inherit (link)))))

 '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline t :inverse-video nil))
                (((class color grayscale) (background light)) (:box nil :foreground "#222222" :background "#bbbbbb"))
                (((class color grayscale) (background dark)) (:box nil :foreground "#bbbbbb" :background "#222222"))
                (((class mono) (background light)) (:underline t :box nil :inverse-video nil :foreground "#000000" :background "#ffffff"))
                (((class mono) (background dark)) (:underline t :box nil :inverse-video nil :foreground "#ffffff" :background "#000000"))))

 '(tooltip ((default nil) (nil nil)))

 '(isearch
   ((((class color) (min-colors 88)) (:foreground "#FF6600" :background "#000"))
    (((class color) (min-colors 16)) (:foreground "#1088cc" :background "#000"))
    (((class color) (min-colors 8)) (:foreground "#1088cc" :background "#000")) (t (:inverse-video t))))

 '(isearch-fail
   ((((class color) (min-colors 88)) (:background "#880000"))
    (((class color) (min-colors 16)) (:background "#FF0000"))
    (((class color) (min-colors 8)) (:background "#FF0000"))
    (((class color grayscale)) (:foreground "#888888")) (t (:inverse-video t))))

 '(lazy-highlight
   ((((class color) (min-colors 88) (background light)) (:background "#1877dd"))
    (((class color) (min-colors 88) (background dark)) (:background "#1777dd"))
    (((class color) (min-colors 16)) (:background "#144499")) 
    (((class color) (min-colors 8)) (:background "#155599")) (t (:underline t))))

 '(match
   ((((class color) (min-colors 88) (background light)) (:background "#1388cc"))
    (((class color) (min-colors 88) (background dark)) (:background "#1388cc"))
    (((class color) (min-colors 8) (background light)) (:foreground "#000000" :background "#139"))
    (((class color) (min-colors 8) (background dark)) (:foreground "#ffffff" :background "#159")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "#888888"))))

 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))

 )

;; Rainbow delimiters
(defun deep-thought-rainbow-delim-set-face ()
  (set-face-attribute 'rainbow-delimiters-depth-1-face   nil :foreground "#19f" )
  (set-face-attribute 'rainbow-delimiters-depth-2-face   nil :foreground "#18d" )
  (set-face-attribute 'rainbow-delimiters-depth-3-face   nil :foreground "#168" )
  (set-face-attribute 'rainbow-delimiters-depth-4-face   nil :foreground "#146" )
  (set-face-attribute 'rainbow-delimiters-depth-5-face   nil :foreground "#236" )
  (set-face-attribute 'rainbow-delimiters-depth-6-face   nil :foreground "#235" )
  (set-face-attribute 'rainbow-delimiters-depth-7-face   nil :foreground "#234" )
  (set-face-attribute 'rainbow-delimiters-depth-8-face   nil :foreground "#246" )
  (set-face-attribute 'rainbow-delimiters-depth-9-face   nil :foreground "#279" )
  (set-face-attribute 'rainbow-delimiters-unmatched-face nil :foreground "#900" ))

(eval-after-load "rainbow-delimiters" '(deep-thought-rainbow-delim-set-face))

;; Add to custom-theme-load-path
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'deep-thought)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; deep-thought-theme.el ends here
