rzeczownik(ala).
rzeczownik(kot).
rzeczownik(jan).
rzeczownik(pies).
rzeczownik(rower).
rzeczownik(slonce).

czasownik(ma).
czasownik(jest).
czasownik(lubi).
czasownik(chce).

przymiotnik(fajny).
przymiotnik(czerwony).
przymiotnik(bia³y).
przymiotnik(szybki).
przymiotnik(leniwy).

zdanie(A,B,C,D,E) :-
    przymiotnik(A),
    rzeczownik(B),
    czasownik(C),
    przymiotnik(D),
    rzeczownik(E),
    write('Zdanie poprawne'), nl,
    write(A),write(' '),write(B),write(' '),write(C),write(' '),write(D),write(' '),write(E).

%silnia rek

silnia(0,1).
silnia(N,Wynik):-
    N > 0,
    NewN is N - 1,
    silnia(NewN,NewWynik),
    Wynik is N*NewWynik.

%fib

fib(0,0).
fib(1,1).
fib(N,Wynik) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, Wynik1),
    fib(N2, Wynik2),
    Wynik is Wynik1 + Wynik2.

% a^n dla n>0

potega(_,0,1).
potega(A,B,C):-
    B>0,
    B1 is B-1,
    potega(A,B1,C1),
    C is A *C1.


%predykat
%hanoi

hanoi(1,A,B,_) :-
    write('PRzenieœ kr¹¿ek z wie¿y '),write(A),
    write(' na wie¿ê '),write(B), n1.
hanoi(N,A,B,C):-
    N >1,
    N1 is N -1,
    hanoi(N1,A,C,B),
    hanoi(1,A,B,_),
    hanoi(N1,C,B,A).

warunek(N):-
    (N>0 ->
    write('N wieksze od zera');
    write('N jest mniejsze od zera')).


