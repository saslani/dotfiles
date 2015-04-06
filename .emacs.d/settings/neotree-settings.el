(require 'neotree)

(setq neo-smart-open t
      neo-show-header nil
      neo-show-hidden-files t
      neo-banner-message nil
      neo-create-file-auto-open t
      neo-window-width 25)

(set-face-foreground 'neo-dir-link-face "SlateGray2")
(set-face-foreground 'neo-file-link-face "grey88")

(global-set-key (kbd "M-t") 'neotree-toggle)

(provide 'neotree-settings)
