(autoload 'post-mode "post" "mode for e-mail" t)
;;
(add-to-list 'auto-mode-alist 
             '("\\.*mutt-*\\|.article\\|\\.followup" 
	           . post-mode))
(add-to-list 'auto-mode-alist '("/mutt" . mail-mode))
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode ))
(add-to-list 'interpreter-mode-alist '("\\.lua$" . lua-mode ))
;;
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'message-mode-hook 'turn-on-flyspell)
(add-hook 'text-mode-hook 'turn-on-flyspell)
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(add-hook 'tcl-mode-hook 'flyspell-prog-mode)
;;
(add-hook 'html-mode-hook 'turn-on-flyspell)
(add-hook 'lua-mode-hook'turn-on-font-lock)

(global-linum-mode t)


(defun turn-on-flyspell ()
    "Force flyspell-mode on using a positive argument. For use in hooks."
    (interactive)
    (flyspell-mode 1))
;;
;; Encryption options:
(require 'epa)
(epa-file-enable)


