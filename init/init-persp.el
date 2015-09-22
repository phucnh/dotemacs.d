(use-package persp-mode
  :defer t
  :diminish persp-mode
  :ensure t
  :init
  (progn
    (custom-set-variables
     '(persp-keymap-prefix (kbd "C-t")))
    (persp-mode 1)
    )
  )

(provide 'init-persp)
