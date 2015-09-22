;; Load Package
;; (require 'cl)
(require 'package)
(setq package-enable-at-startup nil)
;; Required because of a package.el bug
;; (setq url-http-attempt-keepalives nil)

;; Add MELPA.
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; Load el-get
(add-to-list 'load-path (get-config-path "el-get/el-get"))
(require 'el-get)

;; Packages to install from el-get
(defvar my-el-get-packages
  '(
    tomorrow-night-paradise-theme
    )
  "A list of packages to install from el-get at launch.")

;; Custom packages to install with el-get
(setq el-get-sources
  '(
    (:name linum+
           :type http
           :url "http://dea.googlecode.com/svn/trunk/my-lisps/linum+.el")
    (:name tiling
           :type emacswiki
           :features tiling)
    (:name tree-mode
           :type http
           :url "http://www.emacswiki.org/emacs/download/tree-mode.el")
    (:name windata
           :type http
           :url "http://www.emacswiki.org/emacs/download/windata.el")
    (:name dirtree
           :type github
           :pkgname "zk/emacs-dirtree"
           :load "dirtree.el")
  )
)

;; Install el-get packages
(setq el-get-packages
  (append my-el-get-packages (mapcar 'el-get-source-name el-get-sources)))
(el-get 'sync el-get-packages)

;; install use-package if needed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

(use-package esup
  :ensure t
  :defer t)

(use-package exec-path-from-shell
  :ensure t
  :defer t
  :init
  (progn
    (when (memq window-system '(mac ns))
      (exec-path-from-shell-initialize))))

;; Load and setup Escreen
(when (require 'escreen nil 'noerror)
  (escreen-install))

;; magit setup
(setq magit-last-seen-setup-instructions "1.4.0")

;; highlight indentation
(use-package highlight-indentation
  :ensure t)

;; Load Linum+
(require 'linum+)

;; Load full-ack
(use-package full-ack
  :ensure t)

;; Load smooth scrolling
(use-package smooth-scrolling
  :ensure t)

;; Load string inflection
(use-package string-inflection
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package flymake
  :ensure t)

(use-package stylus-mode
  :ensure t)

;; Load osx clipboard
(use-package osx-clipboard
  :ensure t
  :init
  (progn
    (osx-clipboard-mode)))

(provide 'packages)
