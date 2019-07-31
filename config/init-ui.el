(require 'init-elpa)

;;; Default theme
(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

;;; Zoom resizes buffers automatically into best ratios
(use-package zoom
  :ensure t
  :config
  (setq zoom-mode t))

;;; Use "Ubuntu Mono" theme by default
(set-face-attribute 'default nil
                    :family "Ubuntu Mono"
                    :height 130
                    :weight 'normal
                    :width 'normal)

;;; Line spacing
(setq-default line-spacing 0.2)

;;; Extra config
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t)

(blink-cursor-mode t)
(set-cursor-color "#cccccc")
(setq ring-bell-function 'ignore)

;;; Start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;; Do not show Emacs welcome screen
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

;;; For fixed buffer margin, uncomment the following snippet, and comment the next use-package

;; (add-hook 'window-configuration-change-hook
;;   	 (lambda ()
;; 	   (set-window-margins (car (get-buffer-window-list (current-buffer) nil t)) 5 5)))

(use-package perfect-margin
  :custom
  (perfect-margin-visible-width 128)
  :config
  ;; enable perfect-mode
  (perfect-margin-mode t)
  
  ;; add additinal bding on margin area
  (dolist (margin '("<left-margin> " "<right-margin> "))
  (global-set-key (kbd (concat margin "<mouse-1>")) 'ignore)
  (global-set-key (kbd (concat margin "<mouse-3>")) 'ignore)
  (dolist (multiple '("" "double-" "triple-"))
      (global-set-key (kbd (concat margin "<" multiple "wheel-up>")) 'mwheel-scroll)
      (global-set-key (kbd (concat margin "<" multiple "wheel-down>")) 'mwheel-scroll))))

;;; doom-modeline for bottom status bar
(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode)
      :config
      ;; Don’t compact font caches during GC. Improves performance
      (setq inhibit-compacting-font-caches t)
      ;; Fix symlink bug for emacs
      (setq find-file-visit-truename t))

(provide 'init-ui)

