;;; setup-projectile.el -*- lexical-binding: t; -*-

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map))

(provide 'setup-projectile)
