(defun personal-org-mode-defaults ()
  (setq org-alphabetical-lists t))

(add-hook 'org-mode-hook 'personal-org-mode-defaults)

(provide 'personal-org)
