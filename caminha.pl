caminha(Pilha) :- 
	[Pos|Resto] = Pilha,
	move(Pos),
	not(morreu(Pos)),
	not(achouTesouro(Pos)),
	percepcao(Pos,Sentido,POSICAO),
	defineCaractere(POSICAO,Y),
	definePosicao(Pos,Y),
	marcarVizinhos(Pos,Sentido),
	geraPossibilidades(Pos,Resto,NovaPilha),
	imprimeMundo,
	caminha(NovaPilha)
.

caminha(Pilha) :- 
	[Pos|Resto] = Pilha,
	move(Pos),
	morreu(Pos),
	write("Morreu\n")
.


caminha(Pilha) :- 
	[Pos|Resto] = Pilha,
	move(Pos),
	achouTesouro(Pos),
	write("Achou tesouro!!!\n")
.
	
	
	
