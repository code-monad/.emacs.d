(setq create-lockfiles nil)
(global-auto-revert-mode)
(setq backup-by-copying t   ; don't clobber symlinks
      version-control t     ; use versioned backups
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2)

(setq backup-directory-alist
          `(("." . ,(concat user-emacs-directory "backups"))))

;; don't mess-up this file with auto generated lines
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(when (eq system-type 'darwin) ;; mac specified configs
  (load (expand-file-name "mac.el" user-emacs-directory))
  )

(set-face-attribute 'default nil :height 120)

(setq requrement-configs (expand-file-name "requirements.el" user-emacs-directory))

;; load requirements config
(when (file-exists-p requrement-configs)
  (load requrement-configs))
(package-initialize)

(setq cpp-configs (expand-file-name "cpp.el" user-emacs-directory))

;; load requirements config
(when (file-exists-p cpp-configs)
  (load cpp-configs))



(load-theme 'spacemacs-dark)

(tool-bar-mode -1)
(menu-bar-mode -1)
