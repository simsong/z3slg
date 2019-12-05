#!/usr/bin/env python3
#
# https://stackoverflow.com/questions/13395391/z3-finding-all-satisfying-models

"""
Using the python API, find a three Pythagorean triples.
For reasons that aren't clear, this fails when it goes for the 4th.
"""

import z3

a = z3.Int('a')
b = z3.Int('b')
c = z3.Int('c')
s = z3.Solver()
s.add( a*a + b*b == c*c)
s.add( a>0)
s.add( b>0)
s.add( c>0)

for i in range(3):
    if s.check() == z3.sat:
        print(s.model())
        # add this model as an impossibility
        print("a=",s.model()[a])
        print("b=",s.model()[b])
        s.add(z3.And(a != s.model()[a], b != s.model()[b]) ) 
    else:
        print("No more solutions")
        break
