(use-package rainbow-delimiters
  :ensure t
  ;; Add hooks for programming mode
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package smartparens
  :ensure t
  :config
  ;; Enable multiple languages support for smartparens mode
  (require 'smartparens-config))

(use-package move-text
  :ensure t
  :bind (("M-<up>" .  move-text-up)
	 ("M-<down>" .  move-text-down)))

(define-key global-map (kbd "RET") 'newline-and-indent)

;; Remember line when you revisit a file
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

;; Disable autosaves
; (setq auto-save-default nil)

(provide 'init-editting)
