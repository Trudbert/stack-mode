;; stack-network-mode.el starts here

;(require 'stack-mode)

(defvar stack-network-mode-hook nil)

(defvar stack-network-mode-map
  (let ((map (make-keymap)))
    (define-key map "n"     'stack-network-next-site)
    (define-key map "p"     'stack-network-previous-site)
    (define-key map ","     'stack-network-move-site-up)
    (define-key map "."     'stack-network-move-site-down)
    (define-key map "j"     'stack-network-jump-to-bookmarks)
    (define-key map "\C-m"  'stack-network-do-enter-site) ; ret
    (define-key map "o"     'stack-network-do-enter-site)
    (define-key map "u"     'stack-network-do-profile-summary)
    (define-key map "\C-uu" 'stack-network-do-profile-summary-for-user)
    (define-key map "i"     'stack-network-do-inbox)
    (define-key map "b"     'stack-network-toggle-bookmark)
    (define-key map "?"     'stack-network-list-functions) ; [1]
    (define-key map "\C-i"  'stack-network-display-details) ; tab
    map)
  "Keymap for Stack Exchange: Network Browser major mode")

; [1] Possibly change to -list-bindings, though I don't know how to
; get such info

(defun stack-network-next-site nil
  "Move to the next site in the list."
  (next-line)
  (move-beginning-of-line))



(defun stack-network-mode nil
  "Major mode for navigating and organizing sites on the Stack
Exchange Network."
  (interactive)
  (kill-all-local-variables)
;  (set-syntax-table wpdl-mode-syntax-table)
  (use-local-map stack-network-mode-map)
  (setq major-mode 'stack-network-mode)
  (setq mode-name "SX-Network")
  (run-hooks 'stack-network-mode-hook))

(provide 'stack-network-mode)

;; stack-network-mode.el ends here
