;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/sbcl")

;; Keybinds for clear Slime IDE
(local-set-key [(control l)] 'slime-repl-clear-buffer)


;;;;
;;; Telega.el Session
;;

;; (use-package telega
;;  :load-path  "/home/amnesia/.telega"
;;  :commands (telega)
;;  :defer t)

;(add-to-list 'load-path "/home/amnesia/.telega")
;(require 'telega)

(add-hook 'telega-chat-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 (append '(telega-company-emoji
                           telega-company-username
                           telega-company-hashtag)
                         (when (telega-chat-bot-p telega-chatbuf--chat)
                           '(telega-company-botcmd))))
            (company-mode 1)))

;(setq telega-proxies
;      (list
;       '(:server "127.0.0.1" :port 9050 :enable :false
;                 :type (:@type "proxyTypeSocks5"
;                               :username "rkn" :password "jopa"))))

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
 '(custom-safe-themes
   '("64bbc123707a1cc25f145921589d0708c4b6789015e2c50a2ec23cafcee76940" default))
 '(delete-selection-mode nil)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fringe-mode 1 nil (fringe))
 '(ivy-mode t)
 '(blink-cursor-mode t)
 '(visible-cursor nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(org org-mode exwm lisp-mode slime scheme-complete lispy racket-mode rcirc-menu circe hy-mode dr-racket-like-unicode zoom-window quack racer lsp-rust cargo flycheck-rust use-package emmet-mode markdown-mode noflet code-archive js-auto-beautify zoom vue-mode color-theme-modern async web web-beautify))
 '(scroll-bar-mode nil)
 '(setq display-time-default-load-average)
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

;;; Org-mode
;;
(org-babel-load-file
 (expand-file-name "org-mode.org"
                   user-emacs-directory))


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
(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 9050 5))

(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
	("http" . "127.0.0.1:9050")
	("https" . "127.0.0.1:9050")))

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
(add-to-list 'load-path "/home/symbian/git/clone/emacsos/xelb/")
(add-to-list 'load-path "/home/symbian/git/clone/emacsos/exwm/")


(defvar blink-cursor-interval-visible .2)
(defvar blink-cursor-interval-invisible .2)

(defadvice internal-show-cursor (before unsymmetric-blink-cursor-interval)
  (when blink-cursor-timer
    (setf (timer--repeat-delay blink-cursor-timer)
          (if (internal-show-cursor-p)
              blink-cursor-interval-visible
            blink-cursor-interval-invisible))))

(ad-activate 'internal-show-cursor)


;; Load EXWM.
(require 'exwm)

;; Fix problems with Ido (if you use it).
(require 'exwm-config)
(exwm-config-ido)

;; Set the initial number of workspaces (they can also be created later).
(setq exwm-workspace-number 4)

;; All buffers created in EXWM mode are named "*EXWM*". You may want to
;; change it in `exwm-update-class-hook' and `exwm-update-title-hook', which
;; are run when a new X window class name or title is available.  Here's
;; some advice on this topic:
;; + Always use `exwm-workspace-rename-buffer` to avoid naming conflict.
;; + For applications with multiple windows (e.g. GIMP), the class names of
;    all windows are probably the same.  Using window titles for them makes
;;   more sense.
;; In the following example, we use class names for all windows expect for
;; Java applications and GIMP.
(add-hook 'exwm-update-class-hook
          (lambda ()
            (unless (or (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                        (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-class-name))))
(add-hook 'exwm-update-title-hook
          (lambda ()
            (when (or (not exwm-instance-name)
                      (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                      (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-title))))

;; Global keybindings can be defined with `exwm-input-global-keys'.
;; Here are a few examples:
(setq exwm-input-global-keys
      `(
        ;; Bind "s-r" to exit char-mode and fullscreen mode.
        ([?\s-r] . exwm-reset)
        ;; Bind "s-w" to switch workspace interactively.
        ([?\s-w] . exwm-workspace-switch)
        ;; Bind "s-0" to "s-9" to switch to a workspace by its index.
        ,@(mapcar (lambda (i)
                    `(,(kbd (format "s-%d" i)) .
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9))
        ;; Bind "s-&" to launch applications ('M-&' also works if the output
        ;; buffer does not bother you).
        ([?\s-&] . (lambda (command)
		     (interactive (list (read-shell-command "$ ")))
		     (start-process-shell-command command nil command)))
        ;; Bind "s-<f2>" to "slock", a simple X display locker.
        ([s-f2] . (lambda ()
		    (interactive)
		    (start-process "" nil "/usr/bin/slock")))))

;; To add a key binding only available in line-mode, simply define it in
;; `exwm-mode-map'.  The following example shortens 'C-c q' to 'C-q'.
(define-key exwm-mode-map [?\C-q] #'exwm-input-send-next-key)

;; The following example demonstrates how to use simulation keys to mimic
;; the behavior of Emacs.  The value of `exwm-input-simulation-keys` is a
;; list of cons cells (SRC . DEST), where SRC is the key sequence you press
;; and DEST is what EXWM actually sends to application.  Note that both SRC
;; and DEST should be key sequences (vector or string).
(setq exwm-input-simulation-keys
      '(
        ;; movement
        ([?\C-b] . [left])
        ([?\M-b] . [C-left])
        ([?\C-f] . [right])
        ([?\M-f] . [C-right])
        ([?\C-p] . [up])
        ([?\C-n] . [down])
        ([?\C-a] . [home])
        ([?\C-e] . [end])
        ([?\M-v] . [prior])
        ([?\C-v] . [next])
        ([?\C-d] . [delete])
        ([?\C-k] . [S-end delete])
        ;; cut/paste.
        ([?\C-w] . [?\C-x])
        ([?\M-w] . [?\C-c])
        ([?\C-y] . [?\C-v])
        ;; search
        ([?\C-s] . [?\C-f])))

;; You can hide the minibuffer and echo area when they're not used, by
;; uncommenting the following line.
;; (setq exwm-workspace-minibuffer-position 'bottom)

;; Do not forget to enable EXWM. It will start by itself when things are
;; ready.  You can put it _anywhere_ in your configuration.
(exwm-enable)
