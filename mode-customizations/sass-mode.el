(defun customizations-for-sass-mode ()
  (interactive)
  (flyspell-prog-mode)
  (flycheck-mode)
  (linum-mode t)
  (fci-mode)
  (auto-complete-mode)
  (setq tab-width 2)
  (setq highlight-indentation-offset 2)
  (highlight-indentation-mode)
  (highlight-indentation-current-column-mode))

(add-hook 'sass-mode-hook 'customizations-for-sass-mode)
