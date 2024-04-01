;;; setup-selected.el -*- lexical-binding: t; -*-
;; selected: Keymap for when region is active
;; https://github.com/Kungsgeten/selected.el
(use-package selected
  :bind (:map selected-keymap
              ("w" . kill-region)
              ("~" . hydra-change-case/body)
              ("c" . copy-region-as-kill)
              ("d" . duplicate-thing)
              ("E" . eval-region)
              ("e" . er/expand-region)
              ("f" . fill-region)
              ("/" . indent-region)
              ("q" . vr/query-replace)
              (";" . comment-or-uncomment-region)
              ("s" . rag/kill-rectangle-replace-with-space)
              ("l" . align-hydra/body)
              ("t" . xah-title-case-region-or-line))
  :init
  (selected-global-mode))

(provide 'setup-selected)
