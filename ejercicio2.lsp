(let ((x 0)) 
  (defun foo (y) 
    (when (equal x 0) (setq x y)) 
    (when (< x y) (setq x y))
    x))
 

(foo 4)