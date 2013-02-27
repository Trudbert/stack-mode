;; stack-mode.el starts here

;;; Stack-Mode for Emacs
;;; Author: Sean Allred
;;; Version: 2013.2.27

(require 'json)    ; Included in Emacs 24+
(require 'request) ; Available via MELPA


(defgroup stack-exchange nil
  "Stack Exchange Mode"
  :group 'environment)

(defvar stack-mode-hook nil)

(defvar stack-mode-map
  (let ((map (make-keymap)))
    ; TODO define as many keymaps as necessary
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for Stack Exchange major mode")

; Note that this will only open the buffer in our mode.
; There is likely some event we need to handle to take
;  this information in the file and then present the
;  information the user actually wants.
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.sx\\'" . stack-mode))

(require 'stack-network-mode)

(provide 'stack-mode)

;; stack-mode.el ends here
