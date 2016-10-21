
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(require 'key-bindings)


(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-case-fold nil
      ido-auto-merge-work-directories-length -1
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10)



(delete-selection-mode 1)
(scroll-bar-mode -1)
(setq truncate-lines t)

(setq backup-directory-alist `(("." . "~/.backup")))
(defalias 'yes-or-no-p 'y-or-n-p)

(server-start)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-face-attribute 'default nil :height 95)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (logstash-conf dockerfile-mode docker-tramp smex rust-mode multiple-cursors magit go-mode exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
