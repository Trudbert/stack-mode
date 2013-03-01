
;; stack-mode.el starts here

(require 'json)

(require 'request)

(defgroup stack-exchange
  nil
  "Stack Exchange mode."
  :group 'environment)

(defvar stack-mode-hook nil)

(defvar stack-mode-map
  (let ((map (make-sparse-keymap)))
    map)
  "Keymap for Stack Exchange major mode.  This keymap is not
  used.")

(require 'stack-network-mode)

(provide 'stack-mode)

;; stack-mode.el ends here

(defvar stack-exchange-api-key-to-site-alist
  ; define
  )
