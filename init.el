
(require 'package)
(setq package-enable-at-startup nil)
(cond
 ((string-equal system-type "windows-nt")
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")))
 ((string-equal system-type "darwin")
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))))
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/configurations.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (base16-theme gruvbox-theme typing projectile web-mode flycheck smartparens js2-mode monokai-theme exec-path-from-shell emacs-path-from-shell elpy yasnippet which-key use-package try pyvenv org-bullets evil-workman-mode counsel auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
