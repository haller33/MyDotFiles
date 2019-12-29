;;; code-archive-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "code-archive" "code-archive.el" (0 0 0 0))
;;; Generated autoloads from code-archive.el

(autoload 'code-archive-save-code "code-archive" "\
Archive the current buffer and save the region to the code archive stack.

\(fn)" t nil)

(autoload 'code-archive-insert-org-block "code-archive" "\
Insert an `org-mode' styled code block sourced from the code archive stack.
This consumes an entry from ‘code-archive--save-stack’.

\(fn)" t nil)

(autoload 'code-archive-do-org-capture "code-archive" "\
For use in an org capture template, insert an org code block.
FILENAME is the name of the file visited by buffer when org capture was called.
Usage in capture template: (code-archive-do-org-capture \"%F\")

\(fn FILENAME)" nil nil)

(autoload 'code-archive-org-src-tag "code-archive" "\
For use in an org capture template, insert an org code block.
FILENAME is the name of the file visited by buffer when org capture was called.
Usage in capture template: (code-archive-org-src-tag \"%F\")

\(fn FILENAME)" nil nil)

(autoload 'code-archive-goto-src "code-archive" "\
Open the original source file of the codeblock at point.
The point must be on the first line.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "code-archive" '("code-archive-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; code-archive-autoloads.el ends here
