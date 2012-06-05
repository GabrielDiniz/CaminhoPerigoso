% Mundo inicial a ser utilizado no trabalho
% Para mundos maiores, sigam esse modelo
% by Jeiks
%%---------------------------------------%%
% para iniciar chamar : caminha([[1,1]]).
not(P) :- (call(P) -> fail ; true). %clausula not()

carregaMundo :-
	consult('mundo1.pl').

carregaRegras :-
	consult('regras-basicas.pl'),
	consult('caminha.pl'),
	consult('marcaVizinhos.pl'),
	consult('possibilidades.pl'),
	consult('pilha.pl').

carregaTudo :-
	carregaMundo, carregaRegras.

main :- 
	carregaTudo.

:- initialization(main).


