caminha(Pos) :- 
	move(Pos),
	not(morreu(Pos)),
	not(achouTesouro(Pos)),
	percepcao(Pos,Sentido,POSICAO),
	defineCaractere(POSICAO,Y),
	definePosicao(Pos,Y),
	marcarVizinhos(Pos,Sentido),
!.
	
	
	
