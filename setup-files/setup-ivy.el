;;; setup-ivy.el -*- lexical-binding: t; -*-

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package counsel
  :ensure t
  :after ivy)

(provide 'setup-ivy)
