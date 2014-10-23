;; term
(require 'multi-term)
(setq multi-term-program "/apollo/env/envImprovement/var/bin/zsh")

(when (require 'term nil t) ; only if term can be loaded..
(setq term-bind-key-alist
      (list (cons "C-c C-c" 'term-interrupt-subjob)
            (cons "C-p" 'previous-line)
            (cons "C-n" 'next-line)
            (cons "M-f" 'term-send-forward-word)
            (cons "M-b" 'term-send-backward-word)
            (cons "C-c C-j" 'term-line-mode)
            (cons "C-c C-k" 'term-char-mode)
            (cons "M-DEL" 'term-send-backward-kill-word)
            (cons "M-d" 'term-send-forward-kill-word)
            (cons "<C-left>" 'term-send-backward-word)
            (cons "<C-right>" 'term-send-forward-word)
            (cons "C-r" 'term-send-reverse-search-history)
            (cons "M-p" 'term-send-raw-meta)
            (cons "M-y" 'term-send-raw-meta)
            (cons "C-y" 'term-send-raw))))
