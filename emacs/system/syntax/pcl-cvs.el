;; Emacs configuration file
;; Syntax colouring regular expressions pcl-cvs
;; Written by Martin Ebourne
;; $Id: pcl-cvs.el,v 1.1 2001/05/11 17:31:38 mebourne Exp $

;; PCL-CVS
(defconst cvs-font-lock-keywords-local
  '(("^In.*$" . font-lock-function-name-face)
    ("^.* ci .*$" . font-lock-variable-name-face)
    ("^[ *]*\\(Updated\\|Modified\\|Merged\\|Added\\|Removed\\|Patched\\|Same\\).*$" .
     font-lock-keyword-face)
    ("^[ *]*Conflict.*$" . font-lock-string-face)
    ("^[ *]*Unknown.*$" . font-lock-string-face)
    ("^[ *]*Move.*$" . font-lock-warning-face)
    ("^[ *]*Internal.*$" . font-lock-warning-face)
    ("^\\(PCL-CVS\\|  This\\|---\\).*$" . font-lock-comment-face)
    )
  "Additional expressions to highlight in PCL-CVS mode.")
