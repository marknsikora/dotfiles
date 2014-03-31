;; Start up related
(setq inhibit-startup-screen t)

;; Clean up user interface
(set-scroll-bar-mode 'right)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Enable copy pase between x11 and emacs
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Show line and column numbers
(line-number-mode 1)
(setq column-number-mode t)

;; Enabled syntax highlighting
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t
      font-lock-maximum-size nil)
(setq indicate-empty-lines t)

;; Show matching parens
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Enable visual display of selected region
(transient-mark-mode 1)

;; Auto decompress files
(auto-compression-mode 1)

;; Delete text in selected region when typing
(delete-selection-mode t)

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

;; PRETTY COLOURS!!!
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized")
(load-theme 'solarized-light t)
