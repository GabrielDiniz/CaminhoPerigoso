caminha(Pos) :- 
	move(Pos),
	not(morreu(Pos)),
	not(achouTesouro(Pos)),
	percepcao(Pos,Sentido,POSICAO),
	defineCaractere(POSICAO,Y),
	definePosicao(Pos,Y),
	marcarVizinhos(Pos,Sentido),
!.

caminha(Pos) :- 
	move(Pos),
	morreu(Pos),
	write("Morreu\n"),
!.


caminha(Pos) :- 
	move(Pos),
	achouTesouro(Pos),
	write("Achou tesouro!!!\n"),
!.
	
	
	
