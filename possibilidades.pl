
geraPossibilidades([X,Y],Pilha,NovaPilha) :- 
	posicaoValida([X,Y]);
	(
		(
			A = [],
			write(A),
			( mundo([X+1,Y],'?') ; mundo([X+1,Y],'P?') ; mundo([X+1,Y],'.') ),
			A = [[X+1,Y]]
		)
		;
		(
			B = [],
			write(B),
			( mundo([X,Y+1],'?') ; mundo([X,Y+1],'P?') ; mundo([X,Y+1],'.') ),
			B = [X,Y+1]
		)
		;
		(
			C = [],
			write(C),
			( mundo([X-1,Y],'?') ; mundo([X-1,Y],'P?') ; mundo([X-1,Y],'.') ),
			C = [X-1,Y]
		)
		;
		(
			D = [],
			write(D),
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
	
