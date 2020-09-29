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

(require 'package)
;; use tuna mirror
(add-to-list 'package-archives '("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))
(add-to-list 'package-archives '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
(package-initialize)

;; base packages

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
