;; Emacs configuration file
;; Syntax colouring regular expressions for dired
;; Written by Martin Ebourne

;; Dired mode
(eval-after-load
 "dired"
 '(font-lock-add-keywords
   'dired-mode
   '(;; Fontify directory headers
     ("^  \\(/.+\\|total.+\\)$" 1 font-lock-comment-face)
     ;; Fontify symbolic links
     ("^..l.* \\([^ ]+ -> [^ ]+\\)$" 1 font-lock-number-face)
     ;; Fontify subdirectories
     ("^..d.* \\([^ ]+\\)$" 1 font-lock-string-face)
     ;; Fontify devices
     ("^..[bcs].* \\([^ ]+\\)$" 1 font-lock-function-name-face)
     ;; Fontify proper executables
     ("^..-..x.* \\([^ ]+\\)$" 1 font-lock-comment-face)
     ;; Fontify foreign executables by extension
     ("^..-.* \\([^ ]+\\.\\(b\\(at\\|tm\\)\\|c\\(md\\|om\\)\\|exe\\)\\)$" 1
      font-lock-comment-face)
     ;; Fontify archives/compressed
     ;;	  ("^..-.* \\([^ ]+\\.\\(arj||\deb\\|lzh\\|gz\\|t\\(a[rz]\\|gz\\)\\|[Zz]\\|zip\\)\\)$" 1
     ;;	   font-lock-plain-face)
     ;; Fontify backup, autosave, font lock cache, etc. files
     ("^..-.* \\([^ ]+\\(~\\|\\.flc\\)\\|\\#[^ ]+#\\|\\.#[^ ]+\\)$" 1
      font-lock-keyword-face)
     ;; Fontify object etc. files
     ("^..-.* \\([^ ]+\\.\\(\\(a\\|d\\|o\\)\\(\\|n\\|t\\)\\|elc\\)\\)$" 1
      font-lock-constant-face)
     ;; Fontify normal files
     ("^..-.* \\([^ ]+\\)$" 1 font-lock-variable-name-face)
     ;; Fontify marked delete lines
     ("^\\(D[^>]*\\) [^ ]+\\( -> [^ ]+\\|\\)$" 1 font-lock-warning-face)
     ;; Fontify other marked lines
     ("^\\([^ ][^>]*\\) [^ ]+\\( -> [^ ]+\\|\\)$" 1 font-lock-keyword-face)
     )
   'set))
