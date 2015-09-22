(use-package web-mode
  :defer t
  :ensure t
  :mode "\\.\\(gohtml\\)\\'"
  :init
  (progn
    (setq web-mode-engines-alist '(("razor" . "\\.gohtml\\'")))
    (add-hook 'web-mode-hook 'customizations-for-web-mode)))

(defun customizations-for-web-mode ()
  (linum-mode t)
  (auto-complete-mode)
  (whitespace-mode)
  (set tab-width 2)
)
