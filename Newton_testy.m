%1. Działanie funkcji

%1.1. Przybliżanie wielomianu wielomianem niższego stopnia o stopniu innej
%parzystości
wykresy(@stopien7,[-5 -2 0 3 7 9 12],-8,8) %dla malejących x błąd rośnie do nieskończoności

%1.2. Przybliżanie wielomianu wielomianem niższego stopnia o stopniu tej
%samej parzystości
wykresy(@stopien7,[-5 -2 0 3 7 9],-8,8) %błąd zmienia się wolniej

%1.3. Przybliżanie wielomianu wielomianem wyższego stopnia
wykresy(@stopien7,[-5 -2 0 3 7 9 12 13 20],-20,20) %wielomiany pokrywają się
%minimalne różnie wynikają z zaokrągleń

%1.4. Przybliżanie funkcji okresowej w miejscach zerowych
wykresy(@sin,[-2*pi 0 pi 2*pi 4*pi],-10,10) %sinus został przybliżony funkcją x=0

%1.5. Przybliżanie funkcji okresowej z małą dokładnością
wykresy(@sin,[-2*pi 0 pi/2 3/2*pi 19/3*pi],-10,21) %przybliżenie jest bardzo niedokładne

%1.6. Przybliżenie funkcji okresowej z dużą dokładnością
wykresy(@sin,[-20 -18 -16 -14 -12 -10 -8 -5 -2 0 1 pi 4 7 9 12 15 17 19 20],-12,12)
wykresy(@sin,[-20 -18 -16 -14 -12 -10 -8 -5 -2 0 1 pi 4 7 9 12 15 17 19 20],-20,20)
%węzły wybrane są gęsto na przedziale [-20,20] więc przybliżenie jest dobre

%1.7. Powiększmy powyższy przedział
wykresy(@sin,[-20 -18 -16 -14 -12 -10 -8 -5 -2 0 1 pi 4 7 9 12 15 17 19 20],-30,30)
%przybliżenie jest złe poza przedziałem [-20,20]

%1.8. Zerowy błąd w węzłach interpolacji
Newton_blad(@fun,[0 2 4 6 8 10],0,10,6)

%1.9. Błąd blisko węzłów intepolacji
Newton_blad(@fun,[-3 -2 0 1 3 5 7 9],-3,9,10)

%1.10. Błąd dla wielu węzłów
Newton_blad(@fun,[-11 -10 -8 -5 -3 -1 0 2 3 5 7 9 11],-20,15,13)

%2. Możliwe błędy danych

%2.1. Inna liczba wezłów i wartości punktów
Newton([0 1 2],[5 4 3 2])

%2.2. Punkty podane w macierzy
Newton([0 1; 2 3],[10 11])

%2.3. Powtórzenie punktu
Newton([0 1 6 4 6],[1 1 1 1 1])

%2.4. Zbyt małe m
Newton_blad(@sin,[0 1 pi],0,pi,1)

%2.5. Zła kolejność końców przedziału
wykresy(@sin,[0 1 pi],pi,0)