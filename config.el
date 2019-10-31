;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)

(setq display-line-numbers-type 'relative)

(setq doom-font (font-spec :family "Hack" :size 15))

(require 'doom-themes)

(load-theme 'doom-one t)

(setq doom-modeline-major-mode-icon t)

(setq winner-mode 1)

(setq +ivy-buffer-icons t)

(doom-themes-org-config)

(setq doom-themes-treemacs-theme "doom-colors")
(doom-themes-treemacs-config)

(doom-themes-org-config)

(add-to-list 'default-frame-alist '(height . 68))
(add-to-list 'default-frame-alist '(width . 239))
