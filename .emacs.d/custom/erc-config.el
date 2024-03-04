;; erc configuration.

(defun erc-nick-config (nick-name)
  "General configuration of erc"
  (setq erc-nick nick-name
	erc-user-full-name nick-name))

(defun erc-set-logging ()
  "Set a logging directory"
  (setq erc-log-insert-log-on-open nil)
  (setq erc-log-channels t)
  (setq erc-log-channels-directory "~/.irclogs/")
  (setq erc-save-buffer-on-part t)
  (setq erc-hide-timestamps nil)
  (add-hook 'erc-insert-post-hook 'erc-save-buffer-in-logs))

(defun erc-on-libera-chat ()
  (erc
   :server "irc.libera.chat"
   :port "6667"))

(defun launch-erc (nick-name)
  "Launch erc and it will ask for a nickname
   to set for that session"
  (interactive "sNick Name: ")
  ;; s-blank is from s.el which (almost newer) Emacs includes in the core.
  (if (= (length nick-name) 0)
      (message "No nickname was provided.")
    (erc-nick-config nick-name)
    (erc-set-logging)
    (erc-on-libera-chat)))
