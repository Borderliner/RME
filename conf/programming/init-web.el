(use-package js2-mode
  :ensure t
  :hook (js2-mode . js2-imenu-extras)
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(use-package xref-js2
  :ensure t
  :after js2-mode)

(use-package js2-refactor
  :ensure t
  :after xref-js2
  :hook ((js2-mode . js2-refactor)
	 (js2-mode . (lambda ()
			     (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))
  :init
  (define-key js2-mode-map (kbd "C-k") #'js2r-kill)
  (define-key js-mode-map (kbd "M-.") nil))

(use-package tern
  :ensure t
  :after js2-mode
  :hook (js-mode . tern-mode))

(use-package tide
  :ensure t
  :init
  (interactive)
  (eldoc-mode 1)
  (tide-hl-identifier-mode +1))

(provide 'init-web)

