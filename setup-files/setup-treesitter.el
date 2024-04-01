(use-package tree-sitter
  :ensure t
  :config
  (use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (tree-sitter-require 'python)
  (add-to-list 'tree-sitter-major-mode-language-alist '(python-mode . python))
  (add-to-list 'tree-sitter-major-mode-language-alist '(emacs-lisp-mode . emacs-lisp)))



(provide 'setup-treesitter)

