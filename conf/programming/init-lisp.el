;; slime setup

(use-package paredit
  :ensure t)

(use-package sly-asdf
  :ensure t
  :after sly)

(use-package sly-quicklisp
  :ensure t
  :after sly)

(use-package sly-macrostep
  :ensure t
  :after sly)

(use-package sly
  :ensure t
  :after paredit
  :hook ((lisp-mode . paredit-mode)
	 (lisp-interaction-mode . paredit-mode)
	 (emacs-lisp-mode . paredit-mode)
	 (scheme-mode . paredit-mode)
	 (sly-repl-mode . paredit-mode)
	 (enable-paredit-mode . paredit-mode))
  :init
  (setq sly-command-switch-to-existing-lisp 'always)
  :config
  (setq inferior-lisp-program "ros dynamic-space-size=3gb -Q -- run")
  (autoload 'paredit-mode "paredit" "Minor mode for structurally editing Lisp code." 
  (show-paren-mode 1)
  (global-company-mode 1)
  
  (defun cm/cl-cleanup-sly-maybe ()
    "Kill processes and leftover buffers when killing the last sly buffer."
    (unless (cl-loop for buf in (delq (current-buffer) (buffer-list))
                     if (and (buffer-local-value 'sly-mode buf)
                             (get-buffer-window buf))
                     return t)
      (dolist (conn (sly--purge-connections))
        (sly-quit-lisp-internal conn 'sly-quit-sentinel t))
      (let (kill-buffer-hook kill-buffer-query-functions)
        (mapc #'kill-buffer
              (cl-loop for buf in (delq (current-buffer) (buffer-list))
                       if (buffer-local-value 'sly-mode buf)
                       collect buf)))))

  (defun cm/cl-init-sly ()
    "Attempt to auto-start sly when opening a lisp buffer."
    (cond ((or (equal (substring (buffer-name (current-buffer)) 0 1) " ")
               (sly-connected-p)))
          ((executable-find inferior-lisp-program)
           (let ((sly-auto-start 'always))
             (sly-auto-start)
             (add-hook 'kill-buffer-hook #'cm/cl-cleanup-sly-maybe nil t)))
          ((message "WARNING: Couldn't find `inferior-lisp-program' (%s)"
                    inferior-lisp-program))))

  (add-hook 'sly-mode-hook #'cm/cl-init-sly)

  (sp-with-modes '(sly-mrepl-mode)
    (sp-local-pair "'" "'" :actions nil)
    (sp-local-pair "`" "`" :actions nil))))

(provide 'init-lisp)

