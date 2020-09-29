(when (eq system-type 'darwin) ;; dont eval this if not on mac

  ;; Keybonds
  (global-set-key [(hyper a)] 'mark-whole-buffer)
  (global-set-key [(hyper v)] 'yank)
  (global-set-key [(hyper c)] 'kill-ring-save)
  (global-set-key [(hyper s)] 'save-buffer)
  (global-set-key [(hyper l)] 'goto-line)
  (global-set-key [(hyper w)]
                  (lambda () (interactive) (delete-window)))
  (global-set-key [(hyper z)] 'undo)

  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'hyper)
  
  
  ;; font
  (set-face-attribute 'default nil :height 165))
