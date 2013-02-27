;;; Stack-Mode for Emacs
;;; Author: Sean Allred
;;; Version: 2013.2.27

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

;;;###autoload

; Note that this will only open the buffer in our mode.
; There is likely some event we need to handle to take
;  this information in the file and then present the
;  information the user actually wants.
(add-to-list 'auto-mode-alist '("\\.sx\\'" . stack-mode))



(provide 'stack-mode)
