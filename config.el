;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Place your private configuration here
(setq user-full-name "Richard Moyer"
      user-mail-address "richmoyer@gmail.com")

(require 'company)

(setq company-idle-delay 0.1
      company-minimum-prefix-length 3)

(setq which-key-idle-delay 0.1)

(setq display-line-numbers-type 'relative)

;; (setq doom-font (font-spec :family "IBM Plex Mono" :size 14))

(setq doom-font (font-spec :family "Iosevka" :size 17)
      doom-variable-pitch-font (font-spec :family "Iosevka" :size 15)
      doom-big-font (font-spec :family "Iosevka" :size 24))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
;; (custom-set-faces!
;;   '(font-lock-comment-face :slant italic)
;;   '(font-lock-keyword-face :slant italic))

(setq evil-want-fine-undo t)

(require 'doom-themes)

(load-theme 'doom-one t)

(setq doom-modeline-major-mode-icon t)

(setq all-the-icons-scale-factor 0.8)

(setq winner-mode 1)

(setq org-directory "~/Dropbox/org/")

(setq +ivy-buffer-icons t)

(after! rustic
  (setq rustic-lsp-server 'rust-analyzer))

(after! lsp-python-ms
  (set-lsp-priority! 'mspyls 1))

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

(add-to-list 'default-frame-alist '(height . 43))
(add-to-list 'default-frame-alist '(width . 180))

(map! :leader
      :desc "EIN execute cell and move down"
      "e e" #'ein:worksheet-execute-cell-and-insert-below-km)


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-feeds
   (quote
    ("https://irreal.org/blog/"
     ("https://www.reddit.com/r/baseball/.rss?format=xml" daily)
     ("https://www.theringer.com/rss/index.xml" daily)
     ("https://www.mlbtraderumors.com/feed" daily)
     ("https://sabr.org/rss.xml" daily)
     ("https://blogs.fangraphs.com/feed/" daily)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
