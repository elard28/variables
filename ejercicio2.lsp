(defvar x 12)

(defun bar ()
  (defvar x 30)
  (format t "El valor de x es ~a" x))

(defun foo ()
  (bar))

(foo)
(format t "El valor de x es ~a" x)