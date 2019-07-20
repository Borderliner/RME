;;; Setup package and melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(unless package--initialized (package-initialize))

;;; Load list of default packages to be installed
(load-rel "conf/package-list.el")

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package package-selected-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

;;; Setup use-package
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

