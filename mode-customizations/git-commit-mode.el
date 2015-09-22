(use-package git-commit
  :defer
  :ensure t
  :mode ("\\COMMIT_EDITMSG\\'" . scala-mode)
  :init
  (progn
    (add-hook 'git-commit-mode-hook 'customizations-for-git-commit-mode)))

;; Write commit messages in style
(defun customizations-for-git-commit-mode ()
  (interactive)
  (flyspell-mode)
  (linum-mode t)
  (auto-fill-mode)
  (subword-mode))
