;;
;; Emacs Configuration
;;
;; Base on
;; For fix dired of mac http://qiita.com/maangie/items/5a80ae50c13d14368a72
;;
;; Speed up by use-package at https://github.com/krzysztof-magosa/dotfiles
;;
(setq emacs-config-dir
  (file-name-directory (or load-file-name (buffer-file-name))))

(defun get-config-path(path)
  "Appends argument at the end of emacs-config-dir using expand-file-name"
  (expand-file-name path emacs-config-dir))

;; Init load path
(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; Determine if GUI or console settings should apply
(setq gui-window-system
  (if (or (getenv "EMACS_GUI_SERVER") window-system) t 'nil))

(require 'env)
(require 'packages)
(require 'helpers)
(require 'behavior)
(require 'appearance)
(require 'aliases)
(require 'git)
(require 'helms)
(require 'init-autocomplete)
(require 'init-company)
(require 'init-yasnippet)
(require 'keybindings)
(require 'mode-customizations)
(require 'project-definitions)
(require 'init-persp)
;; (require 'init-elscreen)
;; (require 'remember)
(setq custom-file (get-config-path "init/custom-variables.el"))
(load custom-file)

;; Start server
(require 'server)
(unless (server-running-p) (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d9db2602073498bfa3d591e2ce70de3e9c144c30aeacf9e667b0fb9139f38f50" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 `(warning ((t (:weight regular))))
 `(font-lock-keyword-face ((t (:weight regular))))
 `(font-lock-regexp-grouping-backslash ((t (:inherit (regular)))))
 `(font-lock-regexp-grouping-construct ((t (:inherit (regular)))))
 `(font-lock-type-face ((t (:weight regular))))
 )
