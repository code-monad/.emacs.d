;; install function
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

(require 'package)
;; use tuna mirror
(setq package-archives '(("elpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))
      )

(package-refresh-contents)
;; pagckage lists

(ensure-package-installed 'use-package
			  'spacemacs-theme
			  'magit
			  'lsp-mode
			  'lsp-treemacs
			  'projectile
			  'company
			  'which-key
			  'dap-mode
			  'yasnippet
			  'flycheck
			  'cmake-mode)
