#lang eopl

(define swapper
  (lambda (s1 s2 slist)
    (if (null? slist)
        '()
        (cons (swapper0 s1 s2 (car slist))
              (swapper s1 s2 (cdr slist))))))

(define swapper0
  (lambda (s1 s2 s)
    (cond ((eqv? s1 s) s2)
          ((eqv? s2 s) s1)
          (else s))))