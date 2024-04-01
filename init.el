;; load directory for configuration files for emacs
(add-to-list 'load-path (concat user-emacs-directory "setup-files/"))

;; set home and emacs directories
(defvar user-home-directory (concat (getenv "HOME") "/"))
(setq user-emacs-directory (concat user-home-directory ".emacs.d/"))
(load (locate-user-emacs-file "general.el") nil :nomessage)

;; load all use-package related configuration
(load (locate-user-emacs-file "setup-packages.el") nil :nomessage)

(require 'setup-optimizations)
(require 'setup-no-littering)
(require 'setup-elpy)
(require 'setup-company)
(require 'setup-backup)
(require 'setup-selected)
(require 'setup-treemacs)
(require 'setup-treesitter)
(require 'setup-projectile)
(require 'setup-ivy)
(require 'setup-gemini)
(require 'setup-theme)
(require 'setup-magit)
(require 'setup-flycheck)


;; global keybindings
(global-set-key (kbd "M-1") 'treemacs)
(define-key company-active-map (kbd "C-SPC") nil)
(global-set-key (kbd "C-SPC") 'company-complete-selection)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
(define-key importmagic-mode-map (kbd "C-c C-f") 'importmagic-fix-symbol-at-point)
