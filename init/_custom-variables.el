(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ack-arguments
   (quote
    ("--ignore-dir=vendor/ruby" "--ignore-dir=vendor/bundle" "--ignore-dir=coverage" "--ignore-dir=docs" "--ignore-dir=doc" "--type-add=js=.js,.js.erb" "--type-add=ruby=.jbuilder,.rabl" "--type-add=html=.haml,.hamlc,.jade" "--type-add=css=.sass,.scss,.styl" "--type-set=coffee=.coffee" "--type-set=cucumber=.feature")))
 '(ack-project-root-file-patterns
   (quote
    (".project\\'" ".xcodeproj\\'" ".sln\\'" "\\`Project.ede\\'" "\\`.git\\'" "\\`.bzr\\'" "\\`_darcs\\'" "\\`.hg\\'" "\\`Gemfile\\'" "\\`Rakefile\\'" "\\`Makefile\\'")))
 '(ack-prompt-for-directory (quote unless-guessed))
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 211 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-interval 10)
 '(display-time-load-average-threshold 1.0)
 '(display-time-mode t)
 '(elscreen-display-tab t)
 '(elscreen-tab-display-control t)
 '(elscreen-tab-display-kill-screen nil)
 '(eproject-completing-read-function (quote eproject--ido-completing-read))
 '(evil-default-cursor (quote (t)))
 '(exec-path-from-shell-variables (quote ("PATH" "MANPATH" "GOPATH")))
 '(fci-handle-truncate-lines nil)
 '(fci-rule-width 1)
 '(feature-indent-initial-offset 0)
 '(fill-column 80)
 '(flycheck-completion-system (quote ido))
 '(flycheck-indication-mode (quote right-fringe))
 '(global-auto-revert-mode t)
 '(global-undo-tree-mode t)
 '(helm-ag-source-type (quote file-line))
 '(helm-open-github-commit-limit 10000)
 '(history-length 500)
 '(ibuffer-formats
   (quote
    ((mark modified read-only " "
           (name 48 48 :left :elide)
           " "
           (size 9 -1 :right)
           " "
           (mode 16 16 :left :elide)
           " " filename-and-process)
     (mark " "
           (name 16 -1)
           " " filename))))
 '(icomplete-mode t)
 '(ido-vertical-define-keys (quote C-n-C-p-up-down-left-right))
 '(imenu-auto-rescan t)
 '(imenu-max-item-length 160)
 '(imenu-max-items 100)
 '(isearch-resume-in-command-history t)
 '(ispell-program-name "aspell")
 '(magit-completing-read-function (quote magit-ido-completing-read))
 '(magit-default-tracking-name-function (quote magit-default-tracking-name-branch-only))
 '(magit-repository-directories (quote ("~/Projects" "~/src" "~/.emacs.d" "~/.dotfiles")))
 '(magit-status-buffer-switch-function (quote switch-to-buffer))
 '(markdown-command "redcarpet")
 '(mc/edit-lines-empty-lines (quote ignore))
 '(minimap-width-fraction 0.1)
 '(minimap-window-location (quote right))
 ;; '(neo-smart-open t)
 ;; '(neo-window-width 54)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(nxhtml-skip-welcome t)
 '(org-agenda-files
   (list "~/.org-files/todos.org" "~/.org-files/notes.org" "~/.org-files/events.org"))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-deadline-warning-days 14)
 '(org-default-notes-files "~/.org-files/notes.org")
 '(org-directory "~/.org-files/")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-log-done t)
 '(org-remember-store-without-prompt t)
 '(org-remember-templates
   (quote
    (("Todo" 116 "** TODO %?
" "~/.org-files/todos.org" "Tasks")
     ("Note" 110 "** %?
" "~/.org-files/notes.org" "Notes"))))
 '(org-reverse-note-order t)
 '(package-selected-packages
   (quote
    (find-file-in-project zencoding-mode yaml-mode writeroom-mode writegood-mode undo-tree twilight-bright-theme twilight-anti-bright-theme textmate stylus-mode string-inflection smooth-scrolling smex smartparens scss-mode sass-mode ruby-interpolation ruby-compilation rubocop rhtml-mode restclient rbenv rainbow-mode puppet-mode pt project-explorer php-mode phi-search nvm neotree multiple-cursors move-text minimap markdown-mode magit less-css-mode jade-mode ido-vertical-mode highlight-indentation helm-projectile helm-open-github helm-github-stars helm-ag helm-ack grizzl github-browse-file gitconfig-mode git-timemachine git-gutter-fringe full-ack flymake-php flymake-cursor flymake-css flycheck fill-column-indicator feature-mode expand-region exec-path-from-shell ecb dired+ diminish dash-at-point coffee-mode buffer-move browse-kill-ring ace-jump-buffer ))) ; remove go-snippets go-mode go-autocomplete
 '(pe/follow-current t)
 '(pe/width 54)
 '(persp-modestring-dividers (quote (" [" "]" "|")))
 '(persp-show-modestring t)
 '(php-mode-dot-property-warning t)
 '(projectile-enable-caching nil)
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" ".svn" "_darcs" "vendor/bundle" "vendor/ruby" "coverage" "docs" "doc" "log" "logs" "tmp")))
 '(projectile-globally-ignored-files (quote ("TAGS" "*.log")))
 '(projectile-sort-order (quote recently-active))
 '(ruby-use-encoding-map nil)
 '(safe-local-variable-values (quote ((eval rainbow-mode 1))))
 '(scss-compile-at-save nil)
 '(search-exit-option nil)
 '(smooth-scroll-margin 6)
 '(sort-fold-case t t)
 '(sp-autoescape-string-quote nil)
 '(speedbar-show-unknown-files t)
 '(standard-indent 2)
 '(tabbar-mode nil)
 '(tool-bar-mode nil)
 '(undo-limit 160000)
 '(undo-strong-limit 240000)
 '(undo-tree-mode-lighter "")
 '(visual-line-mode nil t)
 '(whitespace-action nil)
 '(winner-mode t nil (winner))
 '(writeroom-disable-mode-line nil)
 '(writeroom-width 78))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-major ((t nil)) t)
 '(mumamo-background-chunk-submode1 ((t nil)) t)
 '(mumamo-background-chunk-submode2 ((t nil)) t)
 '(mumamo-background-chunk-submode3 ((t nil)) t)
 '(mumamo-background-chunk-submode4 ((t nil)) t)
 '(persp-selected-face ((t (:foreground "royal blue" :weight bold))))
 '(sp-pair-overlay-face ((t (:inherit nil)))))
