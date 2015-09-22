;; Load Auto-Complete
(use-package auto-complete
  :ensure t
  :defer t
  :config
  (progn
    (setq
     ;; ac-auto-show-menu 0.2
     ac-auto-start 3
     ac-use-fuzzy t
     ac-fuzzy-enable t
     c-delay 0.05
     ;; ac-menu-height 15
     tab-always-indent 'complete))
  :config
  (progn
    (require 'auto-complete-config)
    (ac-config-default)
    ;; (ac-flyspell-workaround)
    (define-key ac-completing-map (kbd "RET") 'ac-complete)
    (define-key ac-completing-map (kbd "C-m") 'ac-complete)
    (define-key ac-completing-map (kbd "C-s") 'ac-isearch)
    (define-key ac-completing-map (kbd "C-n") 'ac-next)
    (define-key ac-completing-map (kbd "C-p") 'ac-previous)))

;; Auto-complete when indenting.
;; (defadvice indent-for-tab-command (around ac-before-indent activate)
;;   "Call `auto-complete' if text was recently entered"
;;   (if (ac-trigger-command-p last-command)
;;       (auto-complete)
;;     ad-do-it))

(provide 'init-autocomplete)
