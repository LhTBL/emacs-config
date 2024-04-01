(use-package gptel
  :ensure t
  :config
  (setq gptel-backend (gptel-make-gemini "Gemini"
                                       :key "AIzaSyBvT_e3osJqBt-3wzE_lG8i8rWrYmongNM"
                                       :stream t)))

(provide 'setup-gemini)
