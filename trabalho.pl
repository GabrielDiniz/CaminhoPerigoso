% Mundo inicial a ser utilizado no trabalho
% Para mundos maiores, sigam esse modelo
% by Jeiks
%

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
	carregaTudo, caminha([[1,1]])
:- initialization(main).
