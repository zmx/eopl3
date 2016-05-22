#lang eopl
(define duple
  (lambda (n x)
    (if (eqv? 0 n)
        '()
        (cons x (duple (- n 1) x)))))
