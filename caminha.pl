caminha(Pilha) :- 
	[X|Resto] = Pilha,
	move(Pos),
	not(morreu(Pos)),
	not(achouTesouro(Pos)),
	percepcao(Pos,Sentido,POSICAO),
	defineCaractere(POSICAO,Y),
	definePosicao(Pos,Y),
	marcarVizinhos(Pos,Sentido),
	geraPossibilidades(X,Resto,NovaPilha),
	caminha(NovaPilha),
!.

caminha(Pos,Pilha) :- 
	move(Pos),
	morreu(Pos),
	write("Morreu\n"),
!.


caminha(Pos,Pilha) :- 
	move(Pos),
	achouTesouro(Pos),
	write("Achou tesouro!!!\n"),
!.
	
	
	
