; -*- mode: lisp -*-
;; use a function to find a triple 

(define-fun is-pythagorean-triple ((a Int) (b Int) (c Int)) Bool
  (and (= (+ (* a a) (* b b)) (* c c))
       (>= a 0)
       (>= b 0)
       (>= c 0)))

(declare-const i Int)
(declare-const j Int)
(declare-const k Int)

(assert (is-pythagorean-triple i j k))

(check-sat)
(get-model)

