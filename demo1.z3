;; find a pathagorean triple

(declare-const a Int)
(declare-const b Int)
(assert (= (+ (* a a) (* b b)) (* 5 5)))
(assert (< a b))
(assert (> a 0))
(assert (> b 0))
(check-sat)
(get-model)

