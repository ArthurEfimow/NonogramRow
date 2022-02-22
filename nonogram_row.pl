nonogramrow2([0|T],R):-!,nonogramrow2(T,M), ((M = [0|_],!, R= M);(R= [0|M] )).
nonogramrow2([1|T],[H2|R]):-nonogramrow2(T,[H|R]),!,H2 is H+1.
nonogramrow2([],[0]).

nonogramrow(X,R):-nonogramrow2(X,M),!, ((M = [0|R],!);R = M).
nonogramrow(X):- nonogramrow(X,R), write(R).

:- begin_tests(nonogramrow).

test(one):-   nonogramrow([], []).
test(two):-   nonogramrow([0,0,0,0,0],[]).
test(three):- nonogramrow([1,1,1,1,1],[5]).
test(four):-  nonogramrow([0,1,1,1,1,1,0,1,1,1,1],[5,4]).
test(five):-  nonogramrow([1,1,0,1,0,0,1,1,1,0,0],[2,1,3]).
test(six):-   nonogramrow([0,0,0,0,1,1,0,0,1,0,1,1,1],[2,1,3]).
test(seven):- nonogramrow([1,0,1,0,1,0,1,0,1,0,1,0,1,0,1],[1,1,1,1,1,1,1,1]).

:- end_tests(nonogramrow).

