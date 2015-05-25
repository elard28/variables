(defvar x 12)
;; ==> x

(defun bar ()
  (format t "The value of x is ~a" x))
;; ==> bar

(defun foo (x)
  (bar))
;; ==> foo

(foo 42)