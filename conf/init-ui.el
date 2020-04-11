;; See the bottom of this file for all available themes!

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  ;; CHANGE THE THEME HERE!
  (load-theme 'doom-dracula t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config))

;; Set default font for emacs pre 26.3 here
(when (version< emacs-version "27.0")
  (set-face-attribute 'default nil
		      :family "Ubuntu Mono"
		      :height 130
		      :weight 'normal
		      :width 'normal))

;; Emacs window width and height in pixels
(setq emacs-width-px 1400)
(setq emacs-height-px 768)

;; Set window size and center it on the screen
;; emacs-x = (screen-x / 2) - (emacs-width / 2)
;; emacs-y = (screen-y / 2) - (emacs-height / 2)
(set-frame-size (selected-frame) emacs-width-px emacs-height-px t)
(set-frame-position (selected-frame) (- (/ (display-pixel-width) 2) (/ emacs-width-px 2)) (- (/ (display-pixel-height) 2) (/ emacs-height-px 2)))

;; Line spacing
(setq-default line-spacing 0.2)

;; Extra config
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t)

(blink-cursor-mode t)
(set-cursor-color "#cccccc")
(setq ring-bell-function 'ignore)

;; Download icons
(use-package all-the-icons
  :ensure t)

(defcustom is-all-the-icons-installed nil
  "DO NOT EDIT. Checks if all-the-icons fonts are installed yet."
  :group 'rme
  :type 'boolean)

(unless is-all-the-icons-installed
  (all-the-icons-install-fonts)
  (customize-save-variable 'is-all-the-icons-installed t))

;; doom-modeline for bottom status bar
(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode)
      :config
      ;; Don’t compact font caches during GC. Improves performance
      (setq inhibit-compacting-font-caches t)
      ;; Fix symlink bug for emacs
      (setq find-file-visit-truename t))

(use-package neotree
  :ensure t
  :config
  ;; (global-set-key [f8] 'neotree-toggle)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(defcustom last-neotree-toggled nil
  "Checks if neotree was last toggled."
  :group 'rme
  :type 'boolean)

(global-set-key [f8] (lambda ()
		       (interactive)
		       (if last-neotree-toggled
			   (progn
			     (customize-save-variable 'last-neotree-toggled nil)
			     (neotree-hide))
			 (progn
			   (customize-save-variable 'last-neotree-toggled t)
			   (neotree-show)))))

(if last-neotree-toggled
    (neotree-show))

(provide 'init-ui)

;;; Available themes:
;; doom-one
;; doom-one-light
;; doom-vibrant
;; doom-acario-dark
;; doom-acario-light
;; doom-city-lights
;; doom-challenger-deep
;; doom-dark+
;; doom-dracula
;; doom-ephemeral
;; doom-fairy-floss
;; doom-gruvbox
;; doom-horizon
;; doom-Iosvkem
;; doom-laserwave
;; doom-material
;; doom-manegarm
;; doom-molokai
;; doom-monokai-classic
;; doom-monokai-pro
;; doom-moonlight
;; doom-nord
;; doom-nord-light
;; doom-nova
;; doom-oceanic-next
;; doom-opera
;; doom-opera-light
;; doom-outrun-electric
;; doom-palenight
;; doom-peacock
;; doom-rouge
;; doom-snazzy
;; doom-solarized-dark
;; doom-solarized-light
;; doom-sourcerer
;; doom-spacegrey
;; doom-tomorrow-day
;; doom-tomorrow-night
;; doom-wilmersdorf
