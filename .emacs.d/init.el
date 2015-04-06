(setq settings-path "~/.emacs.d/settings")

(add-to-list 'load-path settings-path)

(require 'packages)
(require 'general-settings)
(require 'window-settings)
(require 'clojure-settings)
(require 'python-settings)
(require 'python-flake8)
(require 'persian-settings)
(require 'ruby-settings)
(require 'neotree-settings)

(let ((user-settings (expand-file-name (concat settings-path "/" (getenv "USER") "-settings.el"))))
  (when (file-exists-p user-settings)
      (load user-settings)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elisp-slime-nav zenburn-theme yaml-mode smex robe rainbow-delimiters paredit neotree markdown-mode jinja2-mode ido-ubiquitous idle-highlight-mode enh-ruby-mode elpy dockerfile-mode cider autopair))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
