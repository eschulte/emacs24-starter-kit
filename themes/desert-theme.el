;;; desert-theme.el --- desert theme

;; Copyright (C) Sergei Lebedev
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of desert theme from `color-themes'

;;; Code:

(deftheme desert
  "desert theme")

(custom-theme-set-faces
 'desert

 '(default ((t (:foreground "ghost white"))))

 '(ac-candidate-face ((t (:background "gray15" :foreground "ghost white"))))
 '(ac-completion-face ((t (:background "olivedrab" :foreground "khaki"))))
 '(ac-selection-face ((t (:foreground "khaki" :background "olivedrab"))))
 '(bold ((t (:bold t :weight bold))))
 '(bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
 '(border ((t (nil))))
 '(buffer-menu-buffer ((t (:bold t :foreground "khaki" :weight bold))))
 '(button ((t (:bold t :weight bold :underline nil :foreground "MediumPurple3" :background "gray20"))))

 '(completions-annotations ((t (:underline t))))
 '(completions-common-part ((t (:foreground "ghost white" :background "gray20"))))
 '(completions-first-difference ((t (:bold t :weight bold))))

;;; '(cursor ((t (:background "khaki"))))

 '(dired-directory ((t (:bold t :weight bold :foreground "PaleGreen3"))))
 '(dired-flagged ((t (:bold t :weight bold :foreground "Pink"))))
 '(dired-header ((t (:bold t :weight bold :foreground "PaleGreen3"))))
 '(dired-ignored ((t (:foreground "grey70"))))
 '(dired-mark ((t (:foreground "#ffa0a0"))))
 '(dired-marked ((t (:bold t :weight bold :foreground "DarkOrange"))))
 '(dired-perm-write ((t (:foreground "LightSkyBlue3"))))
 '(dired-symlink ((t (:foreground "khaki"))))
 '(dired-warning ((t (:bold t :weight bold :foreground "goldenrod"))))

 '(elscreen-tab-background-face ((t (:background "gray15"))))
 '(elscreen-tab-control-face
   ((t (:bold t :weight bold :foreground "goldenrod" :background "gray15" :underline nil))))
 '(elscreen-tab-current-screen-face
   ((t (:bold t :background "gray15" :foreground "goldenrod" :weight bold))))
 '(elscreen-tab-other-screen-face ((t (:background "gray15" :foreground "gray60"))))

 '(error ((t (:bold t :foreground "Pink" :weight bold))))
 '(escape-glyph ((t (:foreground "cyan"))))
 '(file-name-shadow ((t (:foreground "grey70"))))

 '(font-lock-builtin-face ((t (:foreground "MediumPurple3"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "LightSkyBlue3"))))
 '(font-lock-comment-face ((t (:foreground "LightSkyBlue3"))))
 '(font-lock-constant-face ((t (:foreground "#ffa0a0"))))
 '(font-lock-doc-face ((t (:foreground "IndianRed3"))))
 '(font-lock-function-name-face ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "khaki"))))
 '(font-lock-negation-char-face ((t (nil))))
 '(font-lock-preprocessor-face ((t (:foreground "MediumPurple3"))))
 '(font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
 '(font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
 '(font-lock-string-face ((t (:foreground "#ffa0a0"))))
 '(font-lock-type-face ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "ghost white"))))
 '(font-lock-warning-face ((t (:bold t :foreground "goldenrod" :weight bold))))

 '(fringe ((t (:background "gray20"))))
 '(glyphless-char ((t (:height 0.6))))
 '(header-line ((t (:background "gray15" :box (:color "gray20" :line-width 2)))))
 '(help-argument-name ((t (nil))))
 '(highlight ((t (:background "olivedrab" :foreground "khaki"))))
 '(ido-first-match ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(ido-only-match ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(ido-subdir ((t (:bold t :weight bold :foreground "khaki"))))

 '(isearch ((t (:background "olivedrab" :foreground "khaki"))))
 '(isearch-fail ((t (:background "red4"))))
 '(isearch-lazy-light
   ((t (:bold t :background "gray20" :foreground "ghost white" :weight bold))))

 '(italic ((t (:underline t))))

 '(jabber-activity-face ((t (:bold t :weight bold :foreground "PaleGreen3"))))
 '(jabber-activity-personal-face ((t (:bold t :foreground "#ffa0a0" :weight bold))))
 '(jabber-chat-prompt-foreign ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(jabber-chat-prompt-local ((t (:bold t :foreground "#ffa0a0" :weight bold))))
 '(jabber-chat-prompt-system ((t (:bold t :foreground "LightSkyBlue3" :weight bold))))
 '(jabber-rare-time-face ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "IndianRed3"))))
 '(jabber-roster-user-chatty ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(jabber-roster-user-dnd ((t (:foreground "LightSkyBlue3"))))
 '(jabber-roster-user-error ((t (:bold t :weight bold :foreground "goldenrod"))))
 '(jabber-roster-user-offline ((t (:background "gray20" :foreground "gray40"))))
 '(jabber-roster-user-online ((t (:bold t :foreground "khaki" :weight bold))))
 '(jabber-roster-user-xa ((t (:foreground "IndianRed3"))))
 '(jabber-title-large ((t (:bold t :weight bold :height 1.728))))
 '(jabber-title-medium ((t (:bold t :weight bold :height 1.44))))
 '(jabber-title-small ((t (:bold t :weight bold :height 1.2))))

 '(lazy-highlight ((t (:background "paleturquoise4"))))
 '(link ((t (:bold t :background "gray20" :foreground "MediumPurple3" :underline nil :weight bold))))
 '(link-visited ((t (:bold t :underline nil :foreground "MediumPurple3" :background "gray20" :weight bold))))
 '(linum ((t (:background "gray20" :foreground "yellow"))))
 '(match ((t (:bold t :weight bold))))
 '(menu ((t (nil))))
 '(minibuffer-prompt ((t (:bold t :foreground "khaki" :weight bold))))

 '(mode-line
   ((t (:box (:color "gray20" :line-width 2)
             :background "gray15" :foreground "gray60"))))
 '(mode-line-buffer-id
   ((t (:bold t :background "gray15" :box (:color "gray20" :line-width 2)
              :foreground "goldenrod" :weight bold))))
 '(mode-line-emphasis ((t (:bold t :weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
 '(mode-line-inactive
   ((t (:foreground "gray60" :background "gray15"
                    :box (:color "gray20" :line-width 2)))))

 '(mouse ((t (:background "khaki"))))
 '(next-error ((t (:background "olivedrab" :foreground "khaki"))))
 '(nobreak-space ((t (:foreground "cyan" :underline t))))
 '(query-replace ((t (:foreground "khaki" :background "olivedrab"))))
 '(region ((t (:foreground "khaki" :background "olivedrab"))))
 '(scroll-bar ((t (nil))))
 '(secondary-selection ((t (:background "SkyBlue4"))))
 '(shadow ((t (:foreground "grey70"))))
 '(show-paren-match ((t (:bold t :foreground "PaleGreen3" :weight bold))))
 '(show-paren-mismatch ((t (:bold t :foreground "goldenrod" :weight bold))))
 '(success ((t (:bold t :foreground "Green1" :weight bold))))
 '(tool-bar
   ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(tooltip ((t (:background "lightyellow" :foreground "black"))))
 '(trailing-whitespace ((t (:bold t :weight bold :foreground "goldenrod"))))
 '(underline ((t (:underline t))))

 '(vertical-border ((t (nil))))
 '(warning ((t (:bold t :foreground "DarkOrange" :weight bold))))
 '(widget-button ((t (:bold t :weight bold))))
 '(widget-button-pressed ((t (:foreground "red1"))))
 '(widget-documentation ((t (:foreground "lime green"))))
 '(widget-field ((t (:background "dim gray"))))
 '(widget-inactive ((t (:foreground "grey70"))))
 '(widget-single-line-field ((t (:background "dim gray")))) )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'desert)

;;; desert-theme.el ends here
