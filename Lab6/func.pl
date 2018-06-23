a(1). a(2). b(4). b(3).
 
wyp0(F,_) :-
  F.
 
wyp1(F,X) :-
  F,
  F =.. [_,X].
 
wyp2(F,X) :-
  functor(Pred,F,1),
  Pred,
  Pred =.. [_,X].
 
wyp3(F/A,X) :-
  A = 1,
  functor(Pred,F,A),
  Pred,
  Pred =.. [_,X].

:- op(300, xfx, ma).
:- op(200, xfy, i).
 
jas ma kota i psa.
ala i jasia i angine i dosc_agh.
rybki i kanarki.

:- op(100,xfy, matka).

julia matka marcin.
