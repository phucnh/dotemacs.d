;; Helm
(use-package helm
  :ensure t
  :defer t
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-buffers-list)
         ("C-x C-b" . helm-buffers-list)
         ("C-c h" . helm-next-source)
         ("C-c v g" . helm-grep-do-git-grep))
  :config
  (progn
    (define-key helm-map (kbd "<up>") 'previous-history-element)
    (define-key helm-map (kbd "<down>") 'next-history-element)
    (define-key helm-map (kbd "C-h") 'delete-backward-char)
    (define-key helm-map (kbd "M-p") 'helm-previous-source)
    (define-key helm-map (kbd "M-n") 'helm-next-source)))

;; Helm Swoop
(use-package helm-swoop
  :ensure t
  :bind (("M-r" . helm-swoop)
         ("M-R" . helm-swoop-back-to-last-point)
         ("C-c M-r" . helm-multi-swoop)
         ("C-x M-r" . helm-multi-swoop-all)))

;; Helm Projectile
(use-package helm-projectile
  :ensure t
  :bind (("C-x C-M-f" . helm-projectile-find-file)
         ("C-c ;" . helm-projectile)
         ("C-c C-;" . helm-projectile)))

;; Helm Open Github
(use-package helm-open-github
  :ensure t
  :bind (("C-c o f" . helm-open-github-from-file)
         ("C-c o c" . helm-open-github-from-commit)
         ("C-c o i" . helm-open-github-from-issues)
         ("C-c o p" . helm-open-github-from-pull-requests)))

(provide 'helms)
