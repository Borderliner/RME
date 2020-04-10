;;; RME --- Ryan's Minimal Emacs config
;;; Commentary:
;;; Source located at https://github.com/Borderliner/RME

;;; Code:
(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

;;; Core modules
(require 'init-core)
(require 'init-ui)
(require 'init-editting)

;;; Helper modules
(require 'init-company)
(require 'init-flycheck)
(require 'init-lsp)

;;; Programming languages, disabled by default

(provide 'init)
;;; init ends here

