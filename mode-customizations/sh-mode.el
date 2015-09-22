(use-package sh-script
  :defer t
  :ensure t
  :mode (("\\.alias\\'"       . sh-mode)
         ("\\.gpms\\'"        . sh-mode)
         ("\\.cfg\\'"         . sh-mode)
         ("\\.c*sh\\'"        . sh-mode)
         ("\\.[a-zA-Z]+rc\\'" . sh-mode)
         ("crontab.*\\'"      . sh-mode))
  :config
  (progn
    (add-hook 'sh-mode-hook 'customizations-for-sh-mode)
    ))

;; (add-to-list 'auto-mode-alist '("\\.sh\\'" . sh-mode))
;; (add-to-list 'auto-mode-alist '("\\.bash\\'" . sh-mode))
;; (add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
;; (add-to-list 'auto-mode-alist '("\\.tcsh\\'" . sh-mode))
;; (add-to-list 'auto-mode-alist '("\\.tmuxtheme\\'" . sh-mode))

(defun customizations-for-sh-mode ()
  (interactive)
  (flyspell-prog-mode)
  (linum-mode t)
  (hs-minor-mode 1)
  (auto-complete-mode)
  (whitespace-mode)
  (subword-mode)
  (setq sh-basic-offset 2)
  (setq sh-indentation 2)
  (setq tab-width 2)
  (setq highlight-indentation-offset 2)
  (setq whitespace-action (quote (auto-cleanup)))
  (highlight-indentation-mode)
  (define-key sh-mode-map (kbd "RET") 'reindent-then-newline-and-indent))
