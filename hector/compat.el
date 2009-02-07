;;; emacs-22 site-lisp configuration
(when (string-match "\\`22\\.3\\>" emacs-version)
  ;;(setq find-function-C-source-directory
  ;;      "/usr/share/emacs/22.3/src")
  (let ((path (getenv "INFOPATH"))
	(dir "/usr/share/info/emacs-22"))
    (and path
	 ;; move Emacs Info dir to beginning of list
	 (setq Info-directory-list
	       (cons dir (delete dir (split-string path ":" t)))))))

;;; emacs-cvs-23 site-lisp configuration
(when (string-match "\\`23\\.0\\.90\\>" emacs-version)
  ;;(setq find-function-C-source-directory
  ;;      "/usr/share/emacs/23.0.90/src")
  (let ((path (getenv "INFOPATH"))
	(dir "/usr/share/info/emacs-23"))
    (and path
	 ;; move Emacs Info dir to beginning of list
	 (setq Info-directory-list
	       (cons dir (delete dir (split-string path ":" t)))))))
