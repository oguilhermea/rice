;; Debian 10 'Buster' build of emacs 26.1 seens to be bugging with melpa
;; This is a dirty solution 
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(load-theme 'ujelly t)
(line-number-mode 1)
(column-number-mode 1)
(global-display-line-numbers-mode)

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq inhibit-splash-screen t)
(setq initial-scratch-message ";; Happy Hacking")
(setq c-default-style "k&r"
          c-basic-offset 4)

(ido-mode 1)
