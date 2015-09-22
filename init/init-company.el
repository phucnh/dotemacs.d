;; auto complete related stuff
(use-package company
  :ensure t
  :defer t
  :bind ("M-/" . company-complete-common)
  :config
  (progn
    (setq company-idle-delay 0.2)
    (add-to-list 'company-backends 'company-go)
    (add-to-list 'company-backends 'company-irony)
    (add-to-list 'company-backends 'company-ansible)
    (add-to-list 'company-backends 'company-yasnippet)
    )
  :init
  (progn
    (add-hook 'prog-mode-hook 'company-mode)
    (add-hook 'yaml-mode-hook 'company-mode)
    (global-company-mode -1)
    (company-mode -1)
    ))

(use-package company-ansible
  :ensure t
  :defer t)

(use-package company-go
  :ensure t
  :defer t)

(use-package company-irony
  :ensure t
  :defer t)

(use-package company-quickhelp
  :ensure t
  :defer t
  :disabled t
  :commands company-quickhelp-mode
  :init
  (progn
    (setq company-quickhelp-idle-delay 0.2)
    (add-hook 'after-init-hook 'company-quickhelp-mode)))

(use-package company-statistics
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'after-init-hook 'company-statistics-mode)))

(provide 'init-company)
