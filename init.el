;;; RME --- Ryan's Minimal Emacs config
;;; Commentary:
;;; Source located at https://github.com/Borderliner/RME

;;; Code:
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

;;; Core modules
(require 'init-elpa)
(require 'init-core)
(require 'init-ui)
(require 'init-editting)

;;; Helper modules
(require 'init-company)
(require 'init-flycheck)
(require 'init-lsp)

;;; Programming languages, disabled by default
; (require 'init-rust)

;;; Your configuration goes below this line.
;;; use-package is already loaded and ready to go!
;;; use-package docs: https://github.com/jwiegley/use-package

(provide 'init)
;;; init ends here

