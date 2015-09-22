(use-package protobuf-mode
  :defer t
  :ensure t
  :mode "\\.proto$"
  :config
  (progn
    (add-hook 'protobuf-mode-hook 'customizations-for-protobuf-mode)))

(defun customizations-for-protobuf-mode ()
  (interactive)
  (flyspell-prog-mode)
  (flycheck-mode)
  (linum-mode t)
  (fci-mode)
  (auto-complete-mode)
  (subword-mode)
  (setq highlight-indentation-offset 2)
  (highlight-indentation-mode)
  (highlight-indentation-current-column-mode)
  (define-key protobuf-mode-map (kbd "RET") 'newline-and-indent))
