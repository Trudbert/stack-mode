;; stack-network-mode.el starts here

;(require 'stack-mode)

(defvar stack-network-display-debug-messages t)

(defun stack-network-debug (format &rest args)
  (if stack-network-display-debug-messages (message format args)))


(define-derived-mode stack-network-mode
  special-mode
  "SX-Network"
  "Major mode for navigating and organizing sites on the Stack
Exchange Network.")
  ;(use-local-map stack-network-mode-map))


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
    (define-key map "\C-i"  'stack-network-display-details) ; tab
    map)
  "Keymap for Stack Exchange: Network Browser major mode")

(defun stack-network-next-site ()
  "Move to the next site in the list."
  (interactive)
  (stack-network-debug "in next site")
  (next-line))

(defun stack-network-previous-site ()
  "Move to the previous site in the list"
  (interactive)
  (stack-network-debug "in prev site")
  (previous-line))

(provide 'stack-network-mode)

;; stack-network-mode.el ends here
