padre(homero,lisa).
padre(homero,bart).
padre(homero,maggie).
madre(marge,lisa).
madre(marge,bart).
madre(marge,maggie).

madre(jacqueline,marge).
madre(jacqueline,selma).
madre(jacqueline,pati).

madre(selma,lagarto).

padre(abraham,homero).

hermano(A,B):-
 hijo(A,X),
 hijo(B,X),
 A \= B.
 
hijo(A,X):-
 padre(X,A).
hijo(A,X):-
 madre(X,A).
 
sobrino(A,Z):-
 hijo(A,X),
 hermano(Z,X).
 
tio(Z,A):-
 sobrino(A,Z).
 
abuelo(Y,A):-
 hijo(A,X),
 hijo(X,Y).
 
primo(A,C):-
 tio(Z,A),
 tio(X,C),
 hijo(A,X),
 hijo(C,Z).
 
descendiente(A,A).
descendiente(A,R):-
 hijo(X,R),
 descendiente(A,X).

antecesor(X,A):-
 descendiente(A,X).
