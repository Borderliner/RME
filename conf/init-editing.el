(use-package rainbow-delimiters
  :ensure t
  ;; Add hooks for programming mode
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (setq sp-highlight-pair-overlay nil)
  (setq sp-show-pair-from-inside nil)
  :diminish smartparens-mode)

(use-package move-text
  :ensure t
  :bind (("M-<up>" .  move-text-up)
	 ("M-<down>" .  move-text-down)))

;; Remember line when you revisit a file
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))
(setq delete-active-region t)

;; Fix for emacs killing text to kill-ring when using M-Backspace and C-Backspace
(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument ARG, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times."
  (interactive "p")
  (delete-word (- arg)))

(global-set-key (kbd "<M-backspace>") 'backward-delete-word)
(global-set-key (kbd "<C-backspace>") 'backward-delete-word)
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Save last session
 (desktop-save-mode 1)

;; No text wrapping
(set-default 'truncate-lines t)

;; Disable autosaves
; (setq auto-save-default nil)

(provide 'init-editing)

