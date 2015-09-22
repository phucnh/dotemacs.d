;;
;; Setup a few global keyboard shortcuts
;;
;; Backward delete
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-q") 'backward-kill-word)

;; Moving in buffer
(global-set-key (kbd "C-c C-u") 'beginning-of-buffer)
(global-set-key (kbd "C-c C-d") 'end-of-buffer)

;; Revert buffer
(global-set-key (kbd "C-c C-r") 'revert-buffer)

;; Alternative to M-x
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; Enable dabbrev-expand via custom keybinding.
(global-set-key (kbd "C-x M-/") 'dabbrev-expand)

;; Kill this buffer
(global-set-key (kbd "C-x C-k") 'kill-this-buffer)

;; Evaluate buffer
(global-set-key (kbd "C-c C-e") 'eval-buffer)

;; Goto line
(global-set-key (kbd "C-c C-l") 'goto-line)
(global-set-key (kbd "M-g") 'goto-line)

;; Switch to next/previous buffer
(global-set-key (kbd "C-c C-n") 'switch-to-next-buffer)
(global-set-key (kbd "C-c C-p") 'switch-to-prev-buffer)

;; Duplicate line (via helpers.el)
(global-set-key (kbd "C-x C-d") 'duplicate-current-line-or-region)

;; Window switching (via helpers.el).
(global-set-key (kbd "C-x i")   'other-window-reverse)
(global-set-key (kbd "C-x C-o") 'other-window)
(global-set-key (kbd "C-x C-i") 'other-window-reverse)
(global-set-key (kbd "C-x 2") 'split-window-and-move-cursor-below)
(global-set-key (kbd "C-x 3") 'split-window-and-move-cursor-right)

;; Move to beginning of line or indentation
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)


;; Kill-Ring related (via helpers.el).
(global-set-key (kbd "M-Y") 'yank-pop-forwards)

;; Align to equal signs (via helpers.el).
(global-set-key (kbd "C-x a =") 'align-region-to-equals)
(global-set-key (kbd "M-]") 'align-region-to-equals)
(global-set-key (kbd "C-x a {") 'align-region-to-opening-brace)

;; align-regexp
(global-set-key (kbd "C-c C-a") 'align-regexp)
(global-set-key (kbd "C-c \\") 'align-regexp) ;; keep till I get used to C-c C-a

;; Toggle auto-fill-mode.
(global-set-key (kbd "C-c q") 'auto-fill-mode)

;; Comment or uncomment line
(global-set-key (kbd "C-c /") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "C-c C-/") 'comment-or-uncomment-region-or-line)

;; Custom HideShow toggles (via helpers.el)
(global-set-key (kbd "C-=") 'toggle-selective-display)
(global-set-key (kbd "C-\\") 'toggle-hiding)

;; phi-search (enables C-s and C-r searching with multiple-cursors-mode).
(use-package phi-search
  :defer t
  :ensure t
  :bind (("C-s" . phi-search)
         ("C-r" . phi-search-backward)))

;; Expand region
(use-package expand-region
  :ensure t
  :bind (("M-@" . er/expand-region)))

;; multiple-cursors
(use-package multiple-cursors
  :ensure t
  :defer t
  :bind (("C-x N" . mc/mark-next-like-this)
         ("C-x P" . mc/mark-previous-like-this)
         ("C-x C-n" . mc/mark-next-like-this)
         ("C-x C-p" . mc/mark-previous-like-this)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-x C-@" . mc/edit-lines)
         ("C-x C-SPC" . mc/edit-lines)
         ("C-x A" . mc/mark-all-like-this)
         ("M-RET" . set-rectangular-region-anchor)
         ("M-<mouse-1>" . mc/add-cursor-on-click)))

;; Browse the kill-ring.
(use-package browse-kill-ring
  :ensure t
  :bind (("C-x C-y" . browse-kill-ring)))

;; Undo/Redo
(use-package undo-tree
  :ensure t
  :bind (("C-/" . undo-tree-undo)
         ("C-\\" . undo-tree-redo)
         ("s-z" . undo-tree-undo)
         ("s-Z" . undo-tree-redo)))

(use-package dash-at-point
  :ensure t
  :bind (("C-c d" . dash-at-point)))

;; Mac OS X specific keybindings
(when (eq system-type 'darwin)

;; Mac OS X Fullscreen (requires Emacs 24.4 or later)
(global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen)

;; Flyspell correct previous word
(when (require 'flyspell nil 'noerror)
  (global-set-key (kbd "s-.") 'flyspell-correct-word-before-point))

;; Move to beginning/end of buffer
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

;; Move to beginning/end of line
(global-set-key (kbd "s-<left>") 'beginning-of-line)
(global-set-key (kbd "s-<right>") 'end-of-line))

;; string-inflection
(when (require 'string-inflection nil 'noerror)
(global-set-key (kbd "C-c C-.") 'string-inflection-cycle))

;; Project Explorer
(use-package project-explorer
  :bind (("C-x p" . project-explorer-open)))

;; Magit
(use-package magit
  :ensure t
  :defer t
  :bind (("C-x g" . magit-status)))

;; ;; Avy mode
(use-package avy
  :ensure t
  :defer t
  :bind (("C-c SPC" . avy-goto-word-1)
         ("C-c C-SPC" . avy-goto-char)
         ("C-c C-j" . avy-goto-word-or-subword-1)))

;; Ace-window
(use-package ace-window
  :ensure t
  :defer t
  :bind(("M-o" . ace-window)
        ("C-c C-w" . ace-window)))

;; projectile related key bindings
(use-package projectile
  :ensure t
  :bind (
         ("C-c C-b" . projectile-ibuffer)
         ("C-x C-t" . projectile-find-file)
         ("C-x t"   . projectile-find-test-file)
         ("C-x C-v" . projectile-switch-to-buffer)
         ("C-c C-s" . projectile-switch-project)))

;; Textmate-mode related key bindings
(when (require 'textmate nil 'noerror)
(global-set-key (kbd "C-t") 'textmate-goto-symbol)
(global-set-key (kbd "C-c [") 'textmate-shift-left)
(global-set-key (kbd "C-c ]") 'textmate-shift-right))

;; move-text
(use-package move-text
  :ensure t
  :defer t
  :init
  (progn
    (define-key global-map (kbd "M-p") 'move-text-up)
    (define-key global-map (kbd "M-n") 'move-text-down)))

;; smartparens
(use-package smartparens
  :ensure t
  :defer t
  :bind(("M-)" . sp-forward-sexp)
        ("M-(" . sp-backward-sexp))
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode)))

;; Set/increase/decrease transparency (via helpers.el)
(global-set-key (kbd "C-M-|") 'transparency-set-value)
(global-set-key (kbd "C-M-<") 'transparency-increase)
(global-set-key (kbd "C-M->") 'transparency-decrease)

;; Window Resizing
(define-key global-map (kbd "C-{") 'shrink-window-horizontally)
(define-key global-map (kbd "C-{") 'shrink-window-horizontally)
(define-key global-map (kbd "C-}") 'enlarge-window-horizontally)
(define-key global-map (kbd "C-^") 'enlarge-window)

;; Window Tiling (via helpers.el) (like vim style)
(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-l") 'windmove-right)

;; Org-mode
(define-key global-map (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-c l") 'org-store-link)

;; Remember mode
;; (define-key global-map (kbd "C-c r") 'org-remember)
;; (define-key global-map (kbd "C-M-r") 'org-remember)

;; Rename current file and buffer (via helpers.el)
(global-set-key (kbd "C-c r")  'rename-file-and-buffer)

;; Allow hash to be entered on UK keyboards (via helpers.el)
(global-set-key (kbd "M-3") 'insert-hash)

(provide 'keybindings)
