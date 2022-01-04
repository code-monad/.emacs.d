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
  (defun mac-toggle-max-window ()
    (interactive)
    (set-frame-parameter nil 'fullscreen
			 (if (frame-parameter nil 'fullscreen)
			     nil
			   'fullboth)))
  
  (define-key global-map [(hyper return)] 
    'mac-toggle-max-window)
  ;; font
  (set-face-attribute 'default nil :height 180))
