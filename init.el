;;; RME --- Ryan's Minimal Emacs config
;;; Commentary:
;;; Source located at https://github.com/Borderliner/RME

;;; GC and other startup optimizations

;; A big contributor to startup times is garbage collection.  We up the GC
;; threshold to temporarily prevent it from running, and then reset it later
;; using a hook.
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; Keep a ref to the actual file-name-handler
(defvar default-file-name-handler-alist file-name-handler-alist)

;; Set the file-name-handler to nil (because regexing is cpu intensive)
(setq file-name-handler-alist nil)

;; Reset file-name-handler-alist after initialization
(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 16777216
          gc-cons-percentage 0.1
          file-name-handler-alist default-file-name-handler-alist)))

;;; Add conf folder to the load path
(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

;;; Core modules
(require 'init-core)
(require 'init-ui)
(require 'init-editing)

;;; Helper modules
(require 'init-company)
(require 'init-flycheck)
(require 'init-lsp)
(require 'init-projectile)

;;; Programming languages, disabled by default
; (require 'init-programming)

(provide 'init)
;;; init ends here

