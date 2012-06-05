caminha(Pilha) :- 
	[Pos|Resto] = Pilha, %retira o primeiro item da pilha, pois ja foi visitado
	move(Pos), % move o agente para a posicao do inicio da pilha
	not(morreu(Pos)), % se nao morreu,
	not(achouTesouro(Pos)); % nem achou o tesouro
	(
		percepcao(Pos,Sentido,POSICAO), % entao sente como esta o ambiente
		definePosicao(Pos,'.'), %marca a posicao como segura
		marcarVizinhos(Pos,Sentido), % marca os vizinhos de acordo com a prcepção
		geraPossibilidades(Pos,Resto,NovaPilha), % alimenta a pilha com as possibilidades a partr desse ponto
		caminha(NovaPilha)% repete todo o processo recursivamente
	)
.
/* essas duas chamadas seriam para tratar quando o agente encontrasse o tesouro, ou caisse no poço ( nao deu certo )
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
	
*/
	
