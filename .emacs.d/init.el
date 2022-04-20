(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(monokai-theme evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(use-package evil
  :ensure t    
  :config
  (evil-mode 1)
  (evil-set-undo-system 'undo-redo))

;; line numbering
(global-display-line-numbers-mode 1)
;; remove scroll bar
(scroll-bar-mode -1)
;; disable menu-bar
(menu-bar-mode -1)
;; disable toolbar
(tool-bar-mode -1)
;; set font size 
(set-face-attribute 'default nil :height 110)
;; prevent creation of backup files
(setq make-backup-files nil)
;; electric-pair mode
(electric-pair-mode 1)
;; set theme
(load-theme 'monokai t)
;; set up org babel
(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)))
(setq org-confirm-babel-evaluate nil)
;; 
(setq x-select-enable-clipboard t)
