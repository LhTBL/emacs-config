(use-package gptel
  :ensure t
  :config
  (setq gptel-backend (gptel-make-gemini "Gemini"
                                       :key "<your_gemini_api_key>"
                                       :stream t)))

(provide 'setup-gemini)
