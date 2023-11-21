zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(jan, kowalski, abc_inc, srednia_firma, 3000).
zatrudnienie(maria, nowak, xyz_corp, duza_firma, 1400).
zatrudnienie(piotr, smith, acme, mala_firma, 2600).

zadowolona_z_pracy(X) :-
    zatrudnienie(X,_,_,mala_firma,Zarobki),
    Zarobki >2500.

duza_firma_slabe_zarobki(X) :-
    zatrudnienie(X, _, _, duza_firma, Zarobki),
    Zarobki < 1500.

