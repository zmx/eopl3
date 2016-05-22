#lang eopl
(define subst
    (lambda (new old slist)
      (if (null? slist)
          '()
          (map (lambda (x) (subst-in-s-exp new old x)) slist)
        )))

(define subst-in-s-exp
    (lambda (new old sexp)
      (if (symbol? sexp)
          (if (eqv? sexp old) new sexp)
          (subst new old sexp))))
