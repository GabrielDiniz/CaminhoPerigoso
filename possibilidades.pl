%insere os 4 vizinhos na pilha de proximos a visitar.
geraPossibilidades([X,Y],Pilha,NovaPilha) :- 
	posicaoValida([X,Y]);
	(
		(
			( mundo([X+1,Y],'?') ; mundo([X+1,Y],'P?') ; mundo([X+1,Y],'.') ),
			A = [[X+1,Y]]
		)
		;
		(
			( mundo([X,Y+1],'?') ; mundo([X,Y+1],'P?') ; mundo([X,Y+1],'.') ),
			B = [X,Y+1]
		)
		;
		(
			( mundo([X-1,Y],'?') ; mundo([X-1,Y],'P?') ; mundo([X-1,Y],'.') ),
			C = [X-1,Y]
		)
		;
		(
			( mundo([X,Y-1],'?') ; mundo([X,Y-1],'P?') ; mundo([X,Y-1],'.') ),
			D = [X,Y-1]
		)
	),
	E = [A|Pilha],
	F = [B|E],
	G = [C|F],
	NovaPilha = [D|G],
	write(NovaPilha)
.
	
