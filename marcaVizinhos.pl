marcarVizinhos( [ X, Y ], Sentido ) :- 
	(
	(
	posicaoValida( [X,Y] ),
	Sentido == ( nada ),
	definePosicao([X+1,Y], '.'),
	definePosicao([X,Y+1], '.'),
	definePosicao([X-1,Y], '.'),
	definePosicao([X,Y-1], '.')

	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	not(posicaoValida([X,Y+1])),
	mundo([X,Y-1],'.'),
	definePosicao([X+1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	not(posicaoValida([X,Y+1])),
	mundo([X+1,Y],'.'),
	definePosicao([X,Y-1], 'P')

	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	not(posicaoValida([X,Y-1])),
	mundo([X+1,Y],'.'),
	definePosicao([X,Y+1], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	not(posicaoValida([X,Y-1])),
	mundo([X,Y+1],'.'),
	definePosicao([X+1,Y], 'P')


	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	not(posicaoValida([X,Y-1])),
	mundo([X,Y+1],'.'),
	definePosicao([X-1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	not(posicaoValida([X,Y-1])),
	mundo([X-1,Y],'.'),
	definePosicao([X,Y+1], 'P')

	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	not(posicaoValida([X,Y+1])),
	mundo([X-1,Y],'.'),
	definePosicao([X,Y-1], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	not(posicaoValida([X,Y+1])),
	mundo([X,Y-1],'.'),
	definePosicao([X-1,Y], 'P')


	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X,Y+1])),
	mundo([X,Y-1],'.'),
	mundo([X-1,Y],'.'),
	definePosicao([X+1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X,Y+1])),
	mundo([X,Y-1],'.'),
	mundo([X+1,Y],'.'),
	definePosicao([X-1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X,Y+1])),
	mundo([X+1,Y],'.'),
	mundo([X-1,Y],'.'),
	definePosicao([X,Y-1], 'P')


	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	mundo([X,Y-1],'.'),
	mundo([X-1,Y],'.'),
	definePosicao([X,Y+1], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	mundo([X,Y-1],'.'),
	mundo([X,Y+1],'.'),
	definePosicao([X-1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X+1,Y])),
	mundo([X-1,Y],'.'),
	mundo([X,Y+1],'.'),
	definePosicao([X,Y-1], 'P')


	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X,Y-1])),
	mundo([X-1,Y],'.'),
	mundo([X+1,Y],'.'),
	definePosicao([X,Y+1], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X,Y-1])),
	mundo([X-1,Y],'.'),
	mundo([X,Y+1],'.'),
	definePosicao([X+1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X,Y-1])),
	mundo([X+1,Y],'.'),
	mundo([X,Y+1],'.'),
	definePosicao([X-1,Y], 'P')


	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	mundo([X+1,Y],'.'),
	mundo([X,Y-1],'.'),
	definePosicao([X,Y+1], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	mundo([X,Y+1],'.'),
	mundo([X,Y-1],'.'),
	definePosicao([X+1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	not(posicaoValida([X-1,Y])),
	mundo([X,Y+1],'.'),
	mundo([X+1,Y],'.'),
	definePosicao([X,Y-1], 'P')




	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X,Y-1],'.'),
	mundo([X,Y+1],'.'),
	mundo([X+1,Y],'.'),
	definePosicao([X-1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X-1,Y],'.'),
	mundo([X,Y+1],'.'),
	mundo([X+1,Y],'.'),
	definePosicao([X,Y-1], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X,Y-1],'.'),
	mundo([X,Y+1],'.'),
	mundo([X-1,Y],'.'),
	definePosicao([X+1,Y], 'P')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X,Y-1],'.'),
	mundo([X-1,Y],'.'),
	mundo([X+1,Y],'.'),
	definePosicao([X,Y+1], 'P')


%--------------------------------------------------------------------------------------%

	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X,Y-1],'?'),
	definePosicao([X,Y-1], 'P?')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X,Y+1],'?'),
	definePosicao([X,Y+1], 'P?')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X-1,Y],'?'),
	definePosicao([X-1,Y], 'P?')
	);(
	posicaoValida( [X,Y] ),
	Sentido == ( brisa ),
	mundo([X+1,Y],'?'),
	definePosicao([X+1,Y], 'P?')
	);imprimeMundo).
%--------------------------------------------------------------------------------------%




