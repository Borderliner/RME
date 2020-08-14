(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(require 'init-lisp)
(require 'init-web)

(provide 'init-programming)

