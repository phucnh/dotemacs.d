(use-package typescript-mode
  :defer t
  :ensure t
  :mode ("\\.ts\\'" . typescript-mode)
  :config
  (progn
    (use-package tss
      :defer t
      :ensure t
      :init
      (progn
        (tss-config-default)
        (add-hook 'typescript-mode-hook 'customizations-for-tss-mode)
        ))
    ;; (use-package tide
    ;;   :defer t
    ;;   :ensure t
    ;;   :init
    ;;   (progn
    ;;     (tide-setup)))
    )
  )

(defun customizations-for-tss-mode ()
  ;; (interactive)
  ;; (flyspell-prog-mode)
  (setq tab-width 2)
  (setq typescript-indent-level 2)
  (setq js-indent-level 2)
  (setq highlight-indentation-offset 2)
  (flycheck-mode)
  (flymake-mode)
  (eldoc-mode 1)
  (linum-mode t)
  ;; (hs-minor-mode 1)
  (auto-complete-mode)
  (company-mode -1)
  ;; (subword-mode)
  (whitespace-mode)
  (setq whitespace-action (quote (auto-cleanup)))
  (highlight-indentation-mode)
  (highlight-indentation-current-column-mode)
  )
