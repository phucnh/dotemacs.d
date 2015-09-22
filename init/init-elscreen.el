(use-package elscreen
  :defer t
  :ensure t
  :init
  (progn
    (custom-set-variables
     '(elscreen-prefix-key (kbd "C-t"))
     '(elscreen-display-tab nil)
     '(elscreen-tab-display-kill-screen nil)
     '(elscreen-tab-display-control nil))

    ;; (bind-key "C-t s" 'helm-elscreen)
    ;; Start elscreen
    (elscreen-start)

    ;; Separate buffer list
    (use-package elscreen-separate-buffer-list
      :defer t
      :ensure t
      :init
      (progn
        (elscreen-separate-buffer-list-mode)))

    ;; Persisten elscreen
    ;; (use-package elscreen-persist
    ;;   :defer t
    ;;   :ensure t
    ;;   :init
    ;;   (progn
    ;;     (elscreen-persist-mode 1)))
    )
  :config
  (progn
    ;; Set screen nickname
    (define-key elscreen-map "," 'elscreen-screen-nickname)
    ))

(provide 'init-elscreen)
