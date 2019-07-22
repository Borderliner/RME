;;; Code:

(require 'init-elpa)

;; Toml-mode for rust
(use-package toml-mode
  :ensure t)

;; Rust-mode
(use-package rust-mode
  :ensure t
  :config
  (autoload 'rust-mode "rust-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  :hook (rust-mode . lsp))

;; Cargo support
(use-package cargo
  :ensure t
  :hook (rust-mode . cargo-minor-mode))

;; Rust flycheck support
(use-package flycheck-rust
  :ensure t
  :hook (flycheck-mode . flycheck-rust-setup))

(provide 'init-rust)
;;; init-rust.el ends here
