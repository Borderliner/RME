;;; RME --- Ryan's Minimal Emacs config
;;; Commentary:
;;; Source located at https://github.com/Borderliner/RME

;;; Code:
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'init-elpa)
(require 'init-core)
(require 'init-ui)
(require 'init-editting)
(require 'init-company)
(require 'init-flycheck)

;;; Your configuration goes below this line.
;;; use-package is already loaded and ready to go!
;;; use-package docs: https://github.com/jwiegley/use-package

(provide 'init)
;;; init ends here

