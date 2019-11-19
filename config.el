;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq user-full-name "Richard Moyer"
      user-mail-address "richmoyer@gmail.com")

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

(setq racer-rust-src-path "/home/richm/.rust/src/")

(setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

(add-to-list 'default-frame-alist '(height . 54))
(add-to-list 'default-frame-alist '(width . 206))

(setq initial-scratch-message (expand-file-name "~/.doom.d/scratch-message.txt"))

(setq initial-scratch-message (with-temp-buffer
                                (insert-file-contents
                                 (expand-file-name "scratch-message.txt"
                                                   user-emacs-directory))
                                (buffer-string)))
(with-current-buffer
    (get-buffer "*scratch*")
  (lisp-interaction-mode))
