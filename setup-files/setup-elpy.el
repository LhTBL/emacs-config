(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  :config
  (setq elpy-rpc-virtualenv-path "/home/blinit10/venv_emacs/")
  (setq elpy-rpc-virtualenv-path 'current))

(provide 'setup-elpy)

