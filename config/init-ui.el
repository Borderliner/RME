(require 'init-elpa)

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox t))

(use-package golden-ratio
  :ensure t
  :config
  (golden-ratio-mode 1))

;;; Load wheatgrass as the default theme if one is not loaded already

(set-face-attribute 'default nil
                    :family "Fira Code"
                    :height 110
                    :weight 'normal
                    :width 'normal)
(setq-default line-spacing 0.2)

(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

(blink-cursor-mode t)
(set-cursor-color "#cccccc")
(setq ring-bell-function 'ignore)

(provide 'init-ui)
