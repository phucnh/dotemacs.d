(use-package markdown-mode
  :defer t
  :ensure t
  :mode ("\\.\\(md\\|mkd\\)\\'" . markdown-mode)
  :init
  (progn
    (add-hook 'markdown-mode-hook 'customizations-for-markdown-mode)))

(defun customizations-for-markdown-mode ()
  (interactive)
  (setq whitespace-action nil)
  (linum-mode t)
  (flyspell-mode)
  ;; (auto-fill-mode)
  (whitespace-mode)
  ;; (subword-mode)
  (define-key markdown-mode-map (kbd "C-c p") 'markdown-preview))
