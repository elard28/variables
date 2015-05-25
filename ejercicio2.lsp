(defvar x 12)

(defun bar ()
  (defvar x 30)
  (format t "The value of x is ~a" x))

(defun foo ()
  (bar))

(foo)