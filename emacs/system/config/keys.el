;; Emacs configuration file
;; Key bindings
;; Written by Martin Ebourne
;; $Id: keys.el,v 1.2 2001/05/18 13:19:05 mebourne Exp $

;; Cursor movement
(global-set-key "\M-\C-z"     'scroll-other-window-down)
(global-set-key "\M-g"        'goto-line)

;; Text editing
(global-set-key "\C-m"        'newline-and-indent)
(global-set-key "\C-xw"       'copy-word-as-kill)
(global-set-key "\M-s"        'swap-case)
(global-set-key [C-backspace] 'kill-current-line)
(global-set-key "\M-p"        'call-last-kbd-macro)

;; Searching
(global-set-key "\C-x%"       'query-replace-regexp)
(global-set-key "\C-x\M-%"    'tags-query-replace)
(global-set-key "\C-xt"       'tags-search)

;; Applications
(global-set-key "\C-xve"      'vc-ediff)
(global-set-key "\C-xv!"      'vc-version-diff)
(global-set-key "\M-\C-x"     'compile)
(global-set-key "\C-xvz"      'cvs-update)
;(global-set-key "\M-n"        'gnus)

;; Buffer operations
(global-set-key "\M-o"        'eval-current-buffer)
(global-set-key "\C-x\C-q"    'toggle-read-only)
(global-set-key [67108897]    'kill-this-buffer)      ; C-!

;; Rectangle operations
(global-set-key "\C-xrw"      'copy-rectangle)
(global-set-key "\C-xr\\"     'close-left-rectangle)
(global-set-key "\C-xr/"      'close-rectangle)

;; Set up repeat key. Should only be on windowing version
(global-set-key "\C-z"        'repeat)
(setq repeat-on-final-keystroke "z")

;; Minibuffer keys
(define-key minibuffer-local-must-match-map [M-tab]
  'file-cache-minibuffer-complete-on-filename)
(define-key minibuffer-local-must-match-map [M-return]
  'file-cache-minibuffer-complete-on-filename-and-exit)
(define-key minibuffer-local-must-match-map [C-return]
  'file-cache-minibuffer-complete-and-exit)