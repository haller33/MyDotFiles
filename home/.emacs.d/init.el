;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/nix/store/jw2522hjypr3dv8v2sjk8gmk4jywi43w-user-environment/bin/sbcl")

;; Keybinds for clear Slime IDE
(local-set-key [(control l)] 'slime-repl-clear-buffer)

;; Flychecker

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))


;;;;
;;; Telega.el Session
;;

;; (use-package telega
;;  :load-path  "/home/amnesia/.telega"
;;  :commands (telega)
;;  :defer t)

;; (add-to-list 'load-path "/home/amnesia/.telega")
;; (require 'telega)

(add-hook 'telega-chat-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 (append '(telega-company-emoji
                           telega-company-username
                           telega-company-hashtag)
                         (when (telega-chat-bot-p telega-chatbuf--chat)
                           '(telega-company-botcmd))))
            (company-mode 1)))

;;(setq telega-proxies
;;      (list
;;       '(:server "127.0.0.1" :port 9050 :enable :false
;;                 :type (:@type "proxyTypeSocks5"
;;                               :username "rkn" :password "jopa"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(custom-safe-themes
   (quote
    ("64bbc123707a1cc25f145921589d0708c4b6789015e2c50a2ec23cafcee76940" default)))
 '(delete-selection-mode nil)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fringe-mode 1 nil (fringe))
 '(ivy-mode t)
 '(menu-bar-mode nil)
 '(org-support-shift-select nil)
 '(package-check-signature nil)
 '(package-selected-packages
   (quote
    (nix-mode nixos-options haskell-mode hindent org org-mode exwm lisp-mode slime scheme-complete lispy racket-mode rcirc-menu circe hy-mode dr-racket-like-unicode zoom-window quack racer lsp-rust cargo flycheck-rust use-package emmet-mode markdown-mode noflet code-archive js-auto-beautify zoom vue-mode color-theme-modern async web web-beautify)))
 '(scroll-bar-mode nil)
 '(setq display-time-default-load-average)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(visible-cursor nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Melpa Packages
;;
(require 'package)
(add-to-list
 'package-archives
 ;; '("Melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
 ;;'("gnu" . "https://elpa.gnu.org/packages/") ;; error
 '("melpa" . "https://melpa.org/packages/")
 '("melpa" . "http://stable.melpa.org/packages/")
 ;; '("org" . "http://orgmode.org/elpa/")
 ;; ("melpa-milk" . "http://melpa.milkbox.net/packages/")
 )

;; Haskell Interact Mode
;; TODO
;; (haskell-interactive-mode-echo SESSION MESSAGE &optional MODE)

;;; Org-mode
;;
(org-babel-load-file
 (expand-file-name "org-mode.org"
                   user-emacs-directory))


;;;; Clear Emacs Shell Buffer (Eshell)
;;

(defun eshell/clear ()
  "04Dec2001 - sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))


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

;; set spotify client api credentials

;; (add-to-list 'load-path "~/emacs.d/sites/counsel-spotify.el")
;; (require ')

(setq counsel-spotify-client-id "08b2760b948c4f14829d64b65b3c56a0")
(setq counsel-spotify-client-secret "bf7b20d7dbb4443a893590007ee5edfe")

;; proxy tor
;; (setq url-gateway-method 'socks)
;; (setq socks-server '("Default server" "127.0.0.1" 9050 5))

;;(setq url-proxy-services
;;      '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
;;	("http" . "127.0.0.1:9050")
;;	("https" . "127.0.0.1:9050")))

(add-to-list 'load-path "~/emacs.d/emmet-mode")
(require 'emmet-mode)

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
 
(setq common-lisp-hyperspec-root
      (concat "file:/" (expand-file-name "~/.emacs/HyperSpec/HyperSpec/")))

;;; theme for error in init.el
;; (load-theme 'taming-mr-arneson t t)
;; (enable-theme 'taming-mr-arneson)
(load-theme 'gotham t t)
(enable-theme 'gotham)

;; Add paths (not required if EXWM is installed from GNU ELPA).
(add-to-list 'load-path "/home/amnesia/git/clone/emacsos/xelb/")
(add-to-list 'load-path "/home/amnesia/git/clone/emacsos/exwm/")


(defvar blink-cursor-interval-visible .2)
(defvar blink-cursor-interval-invisible .2)

(defadvice internal-show-cursor (before unsymmetric-blink-cursor-interval)
  (when blink-cursor-timer
    (setf (timer--repeat-delay blink-cursor-timer)
          (if (internal-show-cursor-p)
              blink-cursor-interval-visible
            blink-cursor-interval-invisible))))

(ad-activate 'internal-show-cursor)

