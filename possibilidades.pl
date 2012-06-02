
geraPossiblidades(Pilha,NovaPilha) :- 
	[[ X, Y ] | Resto] = Pilha,
	posicaoValida([X,Y]),
	( mundo([X+1,Y],'?' ; mundo([X+1,Y],'P?') ; mundo([X+1,Y],'.'),
	insereNaPilha([X+1,Y],Pilha,NovaPilha)
.

geraPossiblidades(Pilha,NovaPilha) :- 
	[[ X, Y ] | Resto] = Pilha,
	posicaoValida([X,Y]),
	( mundo([X,Y+1],'?' ; mundo([X,Y+1],'P?') ; mundo([X,Y+1],'.'),
	insereNaPilha([X,Y+1],Pilha,NovaPilha)
.

geraPossiblidades(Pilha,NovaPilha) :- 
	[[ X, Y ] | Resto] = Pilha,
	posicaoValida([X,Y]),
	( mundo([X-1,Y],'?' ; mundo([X-1,Y],'P?') ; mundo([X-1,Y],'.'),
	insereNaPilha([X-1,Y],Pilha,NovaPilha)
.

geraPossiblidades(Pilha,NovaPilha) :- 
	[[ X, Y ] | Resto] = Pilha,
	posicaoValida([X,Y]),
	( mundo([X,Y-1],'?' ; mundo([X,Y-1],'P?') ; mundo([X,Y-1],'.'),
	insereNaPilha([X,Y-1],Pilha,NovaPilha)
.
	
