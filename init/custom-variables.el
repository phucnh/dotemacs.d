(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d9db2602073498bfa3d591e2ce70de3e9c144c30aeacf9e667b0fb9139f38f50" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-interval 10)
 '(display-time-load-average-threshold 1.0)
 '(display-time-mode t)
 '(elscreen-display-tab t)
 '(elscreen-prefix-key (kbd "C-t"))
 '(elscreen-tab-display-control t)
 '(elscreen-tab-display-kill-screen nil)
 '(eproject-completing-read-function (quote eproject--ido-completing-read))
 '(exec-path-from-shell-variables (quote ("PATH" "MANPATH" "GOPATH")))
 '(global-auto-revert-mode t)
 '(global-undo-tree-mode t)
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face tabs trailing lines-tail))))
 '(whitespace-action nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-keyword-face ((t (:weight regular))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (regular)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (regular)))))
 '(font-lock-type-face ((t (:weight regular))))
 '(mumamo-background-chunk-major ((t nil)) t)
 '(mumamo-background-chunk-submode1 ((t nil)) t)
 '(mumamo-background-chunk-submode2 ((t nil)) t)
 '(mumamo-background-chunk-submode3 ((t nil)) t)
 '(mumamo-background-chunk-submode4 ((t nil)) t)
 '(persp-selected-face ((t (:foreground "royal blue" :weight bold))))
 '(sp-pair-overlay-face ((t (:inherit nil))))
 '(warning ((t (:weight regular)))))
