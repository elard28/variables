define-macro-variable dynamic-names = []
     defmacro "defdyn" (a : Name, (optional "=", value = NULL))
      defvar code = q:code{
         defvar #{a}-dynamic-list = ["value"];
      }
      dynamic-names += a
      (type-of a) = Dynamic[(err (type-of value) (infer-type-of-slot a))]
      return code
    defmacro [X] (a : Slot[Dynamic[X]])
      return {(head #{a}-dynamic-list)}
    defmacro "enter-dynamic-scope"
      return (reduce dynamic-names q:code{} (lambda (a : Code, b : Name)
        a + q:code { #{b}-dynamic-list = (cons (head #{b}-dynamic-list) #{b}-dynamic-list);}))
    defmacro "leave-dynamic-scope"
      return (reduce dynamic-names q:code{} (lambda (a : Code, b : Name)
        a + q:code { #{b}-dynamic-list = (tail #{b}-dynamic-list)}))