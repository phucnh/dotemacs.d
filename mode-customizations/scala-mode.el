(use-package scala-mode2
  :defer t
  :ensure t
  :mode ("\\.\\(scala\\|sbt\\)\\'" . scala-mode)
  :init
  (progn
    (add-hook 'scala-mode-hook 'customizations-for-scala-mode)))

(use-package ensime
  :ensure t
  :defer t
  :commands (ensime-scala-mode-hook)
  :config
  (progn
    (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
    ;; Scala snippets: https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/scala-mode
    (add-hook 'scala-mode-hook #'yas-minor-mode)
    ;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
    (define-key company-active-map [tab] nil)
    ))

;; Config sbt mode
(use-package sbt-mode
  :ensure t
  :defer t
  :init
  (progn
    (setq compilation-skip-threshold 1)))

(defun customizations-for-scala-mode ()
  (linum-mode t)
  (setq tab-width 2)
  (auto-complete-mode -1)
  (company-mode 1)

  ;; Set custom keybinding
  (local-set-key (kbd "RET") 'newline-and-indent)
  (local-set-key (kbd "<backtab>") 'scala-indent:indent-with-reluctant-strategy)
  (local-set-key (kbd "C-M-a") 'scala-syntax:beginning-of-definition)
  (local-set-key (kbd "C-M-e") 'scala-syntax:end-of-definition)

  (use-package whitespace
    :ensure t
    :defer t
    :init
    (progn
      (make-local-variable 'before-save-hook)
      (add-hook 'before-save-hook 'whitespace-cleanup)
      (whitespace-mode)))
)
