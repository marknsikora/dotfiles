(defun personal-cperl-mode-defaults ()
  (setq cperl-indent-parens-as-block t))

(add-hook 'cperl-mode-hook 'personal-cperl-mode-defaults t)

(provide 'personal-perl)
