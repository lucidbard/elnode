(defvar first-time t
  "Flag signifying this is the first time that .emacs has been evaled")
(defvar *emacs-load-start* (current-time))
(load-file "~/Dropbox/.emacs.d/init.el")
(load-file "~/Dropbox/.emacs.d/configure.el")
(setq server-socket-dir
      (format "%s/emacs%d/sock"
              (or (getenv "TMPDIR") "/tmp")
              (user-uid)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives (quote (("marmalade" . "http://marmalade-repo.org/packages/") ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(server-auth-dir))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(add-hook 'after-init-hook 'lucidbard/display-timing t)
