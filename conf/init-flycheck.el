(use-package flycheck
  :ensure t
  :hook
  (prog-mode . flycheck-mode)
  (text-mode . flycheck-mode))

(provide 'init-flycheck)

