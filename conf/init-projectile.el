(use-package projectile
  :ensure t
  :bind (("C-x p" . projectile-switch-project)
	 ("s-p" . projectile-command-map)
	 ("C-c p" . projectile-command-map))
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t))

(provide 'init-projectile)
