;; Disable splash page
(setq inhibit-startup-message t)

;; Load Them
(use-package tomorrow-night-eighties-theme
  :load-path "themes/tomorrow/"
  :init)

;; Set default font
(if gui-window-system
    (set-face-attribute 'default nil :family "Source Code Pro" :height 130)
  (set-face-attribute 'default nil :family "Source Code Pro" :height 120)
  )

;; Disable menu-bar
(menu-bar-mode 0)

;; Disable toolbar
(tool-bar-mode -1)

;; Disable Scrollbar
(if gui-window-system (set-scroll-bar-mode 'nil))

;; Show matching parentheses
(show-paren-mode t)

;; Show column number globally
(column-number-mode t)

;; Don't use OSX Native fullscreen mode
(setq ns-use-native-fullscreen nil)

;; Customize line numbers - In gui mode the fringe is the spacer between line
;; numbers and code, while in console mode we add an extra space for it.
(if gui-window-system (setq linum+-dynamic-format " %%%dd")
  (setq linum+-dynamic-format " %%%dd "))

;; Linum+ resets linum-format to "smart" when it's loaded, hence we have to
;; use a eval-after-load hook to set it to "dynamic".
(eval-after-load "linum+" '(progn (setq linum-format 'dynamic)))

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; ;; Display whitespace characters globally
(global-whitespace-mode t)

;; Customize Whitespace Characters
;;  - Newline: \u00AC = ¬
;;  - Tab:     \u2192 = →
;;             \u00BB = »
;;             \u25B6 = ▶
(setq whitespace-display-mappings
    (quote ((newline-mark ?\n [?\u00AC ?\n] [?$ ?\n])
            (tab-mark     ?\t [?\u2192 ?\t] [?\u00BB ?\t] [?\\ ?\t]))))

(setq whitespace-style
    (quote (face tabs trailing space-before-tab newline
                 indentation space-after-tab tab-mark newline-mark
                 empty)))

;; Cursor
(blink-cursor-mode 0)
(setq initial-frame-alist
    (cons '(cursor-type . bar) (copy-alist initial-frame-alist)))
(setq default-frame-alist
    (cons '(cursor-type . bar) (copy-alist default-frame-alist)))

;; Transparency (via helpers.el)
(setq transparency-level 99)
(transparency-set-value transparency-level)
(add-hook 'after-make-frame-functions
        (lambda (selected-frame)
          (set-frame-parameter selected-frame 'alpha transparency-level)))

(provide 'appearance)
