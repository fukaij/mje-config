;; Emacs configuration file
;; Setup for desktop session saving
;; Written by Martin Ebourne
;; $Id: desktop.el,v 1.1 2001/05/11 17:31:38 mebourne Exp $

;; Session saver
(cond (window-system
       (load "desktop")
       (setq desktop-basefilename (concat ".emacs.desktop." (user-real-login-name)))
       ;;(desktop-load-default)
       (setq desktop-globals-to-save
	     (append
	      '(kill-ring coding-system-history
			  compile-command
			  command-history
			  compile-history
			  dired-regexp-history
			  dired-shell-command-history
			  extended-command-history
			  filename-history
			  file-name-history
			  input-method-history
			  iswitchb-history
			  minibuffer-history
			  query-replace-history
			  read-expression-history
			  regexp-history
			  set-variable-value-history 
			  shell-command-history)
	      desktop-globals-to-save))
       (add-hook 'kill-emacs-hook
		 (function (lambda ()
			     (desktop-truncate search-ring 10)
			     (desktop-truncate regexp-search-ring 10)
			     (desktop-truncate kill-ring 10)
			     (desktop-truncate kill-ring-yank-pointer 10)
			     )))
       ))
