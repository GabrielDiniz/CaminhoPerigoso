% Mundo inicial a ser utilizado no trabalho
% Para mundos maiores, sigam esse modelo
% by Jeiks
%

carregaMundo :-
	consult('mundo1.pl').

carregaRegras :-
	consult('regras-basicas.pl').


carregaTudo :-
	carregaMundo, carregaRegras.

:- initialization(carregaTudo).
