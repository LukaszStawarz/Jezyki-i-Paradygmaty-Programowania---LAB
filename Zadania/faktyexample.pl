figura(kwadrat,4).
figura(trojkat,3).
figura(trapez,4).
figura(pieciokat_foremny,5).
figura(szczesciokat_foremny,6).
figura(osmiokat_foremny,8).
figura(dziesieciokat_foremny,10).

%Pole kwadratu
pole_kwadratu(X,A) :- A is X*X.

%Pole ko³a
pole_kola(Promien, Pole) :-
    Pole is pi * Promien * Promien.

%Œrednia arytmetyczna
srednia(X, Y, Srednia) :-
    Srednia is (X + Y) / 2.

%Figury mniej ni¿ 5 œcian
figura5:-
    figura(Nazwa, Sciany),
    Sciany =< 5,
    write(Nazwa), nl,
    fail.
%Zadanie 4
%
dzis_klamie(lew) :-
    dzis_dzien(Dzien),
    member(Dzien, [poniedzialek, wtorek, sroda]).
dzis_klamie(nosorozec) :-
    dzis_dzien(Dzien),
    member(Dzien, [czwartek, piatek, sobota]).

wczoraj_klamal(lew) :-
    wczoraj_dzien(Dzien),
    member(Dzien, [poniedzialek, wtorek, sroda]).
wczoraj_klamal(nosorozec) :-
    wczoraj_dzien(Dzien),
    member(Dzien, [czwartek, piatek, sobota]).

% Funkcja pomocnicza do przechodzenia przez dni tygodnia
dzis_dzien(Dzien) :-
    member(Dzien, [poniedzialek, wtorek, sroda, czwartek, piatek, sobota, niedziela]).

% Funkcja pomocnicza do przechodzenia przez dni tygodnia
wczoraj_dzien(Dzien) :-
    dzis_dzien(Dzis),
    once(prev(Dzis, Dzien)).

% Funkcja do uzyskiwania poprzedniego dnia
prev(poniedzialek, niedziela).
prev(wtorek, poniedzialek).
prev(sroda, wtorek).
prev(czwartek, sroda).
prev(piatek, czwartek).
prev(sobota, piatek).
prev(niedziela, sobota).
