;; see p. 37 for valid logical functions
;; see p. 38 for valid arithmetic functions


(declare-sort person)
(declare-const p1 person)
(declare-const p2 person)
(declare-fun age (person) Int)
(declare-fun is-voter (person) Bool)
(declare-fun is-drinker (person) Bool)
(assert (= (is-voter p1) (>= (age p1) 18)))
(assert (= (is-drinker p1) (>= (age p1) 21)))

;; p1 is a voter but not a drinker
(assert (= true  (is-voter p1)))
(assert (= false (is-drinker p1)))
(assert (= (is-voter p1) (>= (age p1) 18)))
(assert (= (is-drinker p1) (>= (age p1) 21)))

;; p2 is a voter, not a drinker, and not 18
(assert (= true  (is-voter p2)))
(assert (= false (is-drinker p2)))
(assert (= (is-voter p2) (>= (age p2) 18)))
(assert (= (is-drinker p2) (>= (age p2) 21)))
(assert (not (= (age p2) 18)))

;; and get their ages!
(declare-const p1-age Int) (assert (= (age p1) p1-age))
(declare-const p2-age Int) (assert (= (age p2) p2-age))

(check-sat)
(get-model)


            
