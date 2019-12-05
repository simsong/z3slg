;; see p. 37 for valid logical functions
;; see p. 38 for valid arithmetic functions


(declare-sort person)
(declare-const p1 person)
(declare-const p2 person)
(declare-fun age (person) Int)

(define-fun is-voter ((p person)) Bool
  (>= (age p) 18))

(define-fun is-drinker ((p person)) Bool
  (>= (age p) 21))

;; p1 is a voter but not a drinker
(assert (= true  (is-voter p1)))
(assert (= false (is-drinker p1)))

;; p2 is a voter, not a drinker, and not 18
(assert (= true  (is-voter p2)))
(assert (= false (is-drinker p2)))
(assert (not (= (age p2) 18)))

;; what we want to find out
(declare-const p1-age Int) (assert (= p1-age (age p1)))
(declare-const p2-age Int) (assert (= p2-age (age p2)))

(check-sat)
(get-model)


            
