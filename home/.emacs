;; Default handling of tabs
(setq-default tab-width 4
              indent-tabs-mode nil)

;; c-mode preferences
(setq-default c-default-style "linux"
              c-basic-offset 4)
              
;; perl-mode preferences
(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent t)

;; Enabled syntax highlighting
(global-font-lock-mode 1)
;; Enable visual display of selected region
(transient-mark-mode 1)
