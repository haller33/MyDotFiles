;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("Melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
      t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(display-battery-mode t)
 '(menu-bar-mode nil)
 '(minimap-mode nil)
 '(package-selected-packages
   (quote
    (minimap stumpwm-mode slime scheme-complete lispy racket-mode rcirc-menu circe hy-mode dr-racket-like-unicode zoom-window quack racer lsp-rust cargo flycheck-rust use-package emmet-mode markdown-mode noflet code-archive js-auto-beautify zoom vue-mode color-theme-modern async web web-beautify)))
 '(scroll-bar-mode nil)
 '(server-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Begin Scheme48
;; s48
(setq scheme-program-name "scheme48")

(setq load-path (cons (expand-file-name "~/git/wget/scheme48-1.9.2/emacs/")
		      load-path))

(autoload 'cmulisp "cmulisp"
           "Run an inferior Lisp process."
           t)

(setq cmulisp-load-hook
       '((lambda () 
           (define-key cmulisp-mode-map "\C-ct" 'favorite-cmd))))
;; s48

;; proxy tor
(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 9050 5))

; (setq url-proxy-services
  ;  '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
    ;  ("http" . "127.0.0.1:9050")
     ; ("https" . "127.0.0.1:9050")))

(add-to-list 'load-path "~/emacs.d/emmet-mode")
(require 'emmet-mode)

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(load-theme 'gotham t)
