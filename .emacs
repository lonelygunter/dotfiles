(menu-bar-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))

(setq org-todo-keywords
      '((sequence "TODO" "WAIT" "|" "DONE")))

(add-hook 'org-mode-hook 'org-indent-mode)

;; Ensure Org mode is loaded
(require 'org)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("bc3eb68fd61ce2c373056b75304c6b738506b927b1cf5ad923a99dc0232f576b" "e373dad758a0180996c0d495ef78524b15404a79c395ca392a310a382ff0995d" default))
 '(org-agenda-files '("~/Documents/GitHub/whats_up_doc/refile.org")))

;; Set C-c a to open the Org agenda
(global-set-key (kbd "C-c a") 'org-agenda)

;; Set default file if it exists
(when (file-exists-p "/Users/matt/Documents/GitHub/whats_up_doc/refile.org")
  (find-file "/Users/matt/Documents/GitHub/whats_up_doc/refile.org"))


