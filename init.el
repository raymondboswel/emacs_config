(require 'package)
;;; either the stable version:

(add-to-list 'package-archives
  ;; choose either the stable or the latest git version:
  '("melpa-stable" . "http://stable.melpa.org/packages/"))
  ;;'("melpa-unstable" . "http://melpa.org/packages/"))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet speed-type dracula-theme tide company-lsp company ## projectile lsp-mode golden-ratio magit geiser paredit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'golden-ratio)

(golden-ratio-mode 1)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

(require 'company-lsp)
(push 'company-lsp company-backends)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; Set up Ido
(require `ido)(setq ido-enable-flex-matching t)(setq ido-everywhere t)(ido-mode 1)
