(defun load-rel (path)
    (load (concat (getenv "HOME") "/.emacs.d/" path)))

(load-rel "conf/init-package.el")
(load-rel "conf/init-config.el")

;;; Your configuration goes below this line.
;;; use-package is already loaded and ready to go!
;;; use-package docs: https://github.com/jwiegley/use-package
(load-theme 'gruvbox t)
