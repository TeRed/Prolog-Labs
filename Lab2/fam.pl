porownaj(X) :-
	[A,B,C,D|L] = X,
	C == D,
	write('Yes'), nl, !.

porownaj(X) :-
	[A,B,C,D|L] = X,
	C \= D,
	write('No'), nl.

porownaj2([_,_,C,C|_]).

zamien2(Z,X) :-
	[A,B,C,D|L] = Z,
	X=[A,B,D,C|L].

zamien([A,B,C,D|L],X) :-
	X=[A,B,D,C|L].

brat(X, Y) :-
	mezczyzna(Y),
	rodzic(Z, Y),
	rodzic(Z, X),
	X \= Y.

nalezy(X,[X|_]).
nalezy(X,[_|Yogon]) :-
	nalezy(X,Yogon).

dlugosc([],0).
dlugosc([_|Ogon],Dlug) :-
	dlugosc(Ogon,X),
	Dlug is X+1.

a2b([],[]).
a2b([a|Ta],[b|Tb]) :- 
   a2b(Ta,Tb).

sklej([],X,X).
sklej([X|L1],L2,[X|L3]) :-
	sklej(L1,L2,L3).

