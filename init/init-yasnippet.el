(use-package yasnippet
  :ensure t
  :defer t
  :diminish yas-minor-mode
  :init
  (progn
    (setq yas-snippet-dirs '("~/.emacs.d/snippets"))))

(provide 'init-yasnippet)
