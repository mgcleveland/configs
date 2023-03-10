(add-to-list 'load-path "~/.emacs.d/*")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


(global-font-lock-mode 1)
(setq scroll-step 1) ;; keyboard scroll one line at a time
(column-number-mode 1)

(add-hook 'erc-mode (lambda ()
		      (visual-line-mode t)
		      (setq erc-hide-list '("JOIN" "PART" "QUIT"))
		      (setq erc-auto-query 'window)))

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(nyan-mode)

(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)

(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name))
)
(global-set-key "\C-cz" 'show-file-name)


(setq-default indent-tabs-mode nil)

(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq initial-scratch-message nil)

(cua-mode)
