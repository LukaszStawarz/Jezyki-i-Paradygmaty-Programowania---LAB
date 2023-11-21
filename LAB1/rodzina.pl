rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).
szczesliwy(X) :-
	rodzic(X,_),
	write('Jest szcz�liwy/wa').

dwoje_dzieci(X) :-
	rodzic(X,Dziecko1),
	siostra(Dziecko1,_),
	rodzic(X,Dziecko2),
	Dziecko1 \= Dziecko2,
        write('Ma dwoje dzieci').



wnuk(Wnuk,DziadekBabka):-
	rodzic(DziadekBabka,Rodzic),
	rodzic(Rodzic,Wnuk).

ciotka(X,Y) :-
	siostra(X,Siostra),
	rodzic(Siostra,Y).
nastepca(X,Y) :-
	m�czyzna(X),
	m�czyzna(Y),
	rodzic(Y,X).
