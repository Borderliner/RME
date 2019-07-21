;;; init-elpa.el --- Initializes elpa and use-package

;;; Commentary:
;;; Taken from https://github.com/otavio/.emacs.d/blob/master/lisp/init-elpa.el

;;; Code:

(require 'package)

(defun require-package (package)
  "Install given PACKAGE if it was not installed before."
  (if (package-installed-p package)
      t
    (progn
      (unless (assoc package package-archive-contents)
	(package-refresh-contents))
      (package-install package))))

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(require-package 'use-package)
(eval-when-compile
  (require 'use-package))

(provide 'init-elpa)
;;; init-elpa ends here
