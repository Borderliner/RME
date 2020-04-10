(use-package company
  :ensure t
  :config
  (setq company-tooltip-align-annotations t)
  ;; Reduce the number of characters before company kicks in
  (setq company-minimum-prefix-length 1)
  ;; Disable automatic popup for completion
  ;; (setq company-idle-delay nil)

  ;; Reconfigure company to not use M-p and M-n for autocomplete navigation
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "C-n") 'company-select-next)
    (define-key company-active-map (kbd "C-p") 'company-select-previous)
    (define-key company-search-map (kbd "C-n") 'company-select-next)
    (define-key company-search-map (kbd "C-p") 'company-select-previous)
    (define-key company-search-map (kbd "C-t") 'company-search-toggle-filtering))
  
  ;; Set Control-. as autocomplete shortcut
  :bind (("C-." . company-complete))
  :hook
  (prog-mode . company-mode))

(provide 'init-company)

