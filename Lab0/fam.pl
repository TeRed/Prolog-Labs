kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).
mezczyzna(mateusz).

rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(kasia,mateusz).
rodzic(tomek,mateusz).
rodzic(tomek,eliza).
rodzic(robert,anna).
rodzic(robert,magda).
rodzic(magda,jan).

matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).
 
ojc(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).

brat(X, Y) :-
	mezczyzna(Y),
	rodzic(Z, Y),
	rodzic(Z, X),
	X \= Y.

przodek(X,Y) :-
	rodzic(X,Y).
 
przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).


