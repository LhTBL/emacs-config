;;; setup-company.el -*- lexical-binding: t; -*-

;; (use-package corfu
;;   :ensure t
;;   :config
;;   (global-corfu-mode))

;; (use-package corfu-terminal
;;   :if (not (display-graphic-p))
;;   :config
;;   (corfu-terminal-mode))

;; ;; Pretty icons for corfu
;; (use-package kind-icon
;;   :if (display-graphic-p)
;;   :ensure t
;;   :after corfu
;;   :config
;;   (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

;; ;; Orderless: powerful completion style
;; (use-package orderless
;;   :ensure t
;;   :config
;;   (setq completion-styles '(orderless)))

;; ;; Python
;; (use-package poetry)

;; ;; For Emacs Lisp
;; (add-hook 'emacs-lisp-mode-hook #'corfu-mode)


(use-package pyvenv
  :config
  (pyvenv-mode 1))


(use-package python-mode
  :ensure t
  :hook (python-mode . lsp-deferred)
  :custom
  ;; NOTE: Set these if Python 3 is called "python3" on your system!
  (python-shell-interpreter "python3")
  (dap-python-executable "python3")
  (dap-python-debugger 'debugpy)
  :config
  (require 'dap-python))


(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package importmagic
    :ensure t
    :config
    (add-hook 'python-mode-hook 'importmagic-mode))


(provide 'setup-company)
