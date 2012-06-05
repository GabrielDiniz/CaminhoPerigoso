% essas regras avaliam a sensaçao do agente (brisa ou nada) 
% e marcam os vizinhos de acordo com os seguintes criterios:
% 1. se ele nao esta sentindo brisa, significa que todos
%    os seus vizinhos são posições seguras
%
% 2. se es tiver sentindo brisa, e estiver em algum dos cantos do mapa,
%    quer dizer q um dos seus vizinhos é poço, pois a posicao anterior é segura
%
% 3. se estiver nas laterais do mapa, etiver sentindo brisa,
%    e dois dos vizinhos forem seguros, o terceiro é um poço
%
% 4. se estiver no meio do mapa, etiver sentindo brisa,
%    e tres dos vizinhos forem seguros, o quarto é um poço
%
% 5. se etiver sentindo brisa, e nao estiver em nenhuma das 4 opções acima,
%    todos os vizinhos desconhecidos são possiveis poços

marcarVizinhos( [ X, Y ], Sentido ) :- 
	(
	(
	% possibilidade numero 1
	posicaoValida( [X,Y] ),
	Sentido == ( nada ),
	definePosicao([X+1,Y], '.'),
	definePosicao([X,Y+1], '.'),
	definePosicao([X-1,Y], '.'),
	definePosicao([X,Y-1], '.')

	);(
	%possibilidade numero 2
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

	%possibilidades numero 3
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

	%possibilidades numero 4
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
	%marca todos como possivel poço (possibilidade numero 5)
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




