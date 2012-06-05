% regras pra tratar pilhas

insereNaPilha(X,L,[X|L]).

excluiDaPilha(X, [X | Tail ] , Tail ) .
excluiDaPilha(X, [Y|Tail] , [Y | Tail1]) :- excluiDaPilha(X,Tail,Tail1).
