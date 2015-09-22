(use-package gitconfig-mode
  :ensure t
  :defer t)

(use-package gitignore-mode
  :ensure t
  :defer t)

(use-package magit
  :ensure t
  :defer t)

(use-package git-gutter
  :defer t
  :ensure t
  :commands git-gutter-mode
  :init
  (progn
    (global-git-gutter-mode))
  :config
  (progn
    (git-gutter:linum-setup)
    (setq git-gutter:update-interval 2)))

(provide 'git)
