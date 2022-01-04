;; treemacs

(global-set-key [(f8)] 'treemacs)
(setq treemacs-width 20)


;; projectile

(require 'projectile)
(define-key projectile-mode-map (kbd "H-p") 'projectile-command-map)


(setq projectile-project-search-path '("~/workspace/"  ("~/github" . 1)))
