function [] = wykresy(funkcja,pkt,xmin,xmax)
%Funkcja rysuje wykresy funkcji interpolowanej, wielomianu iterpolacyjnego
%i błędu interpolacji dla danej funkcji interpolowanej, węzłów interpolacji
%(pkt) i przedziału na osi x (xmin i xmax)
if xmax<xmin
    error('xmax musi być większe niż xmin')
end
x = [xmin:(xmax-xmin)/(9999):xmax];
wart=funkcja(pkt); %wartości funkcji w węzłach
wsp=Newton(pkt,wart); %obliczanie współczynników wielomianu interpolacyjnego
subplot(1,2,1);
plot(x, funkcja(x), 'g', x, wielomian(x,wsp,pkt), 'b'); %wykres funkcji i wielomianu
title("Wartości funkcji i przybliżenia");
xlabel("oś x");
ylabel("oś y");
legend("funkcja","wielomian interpolacyjny");
subplot(1,2,2);
plot(x, wielomian(x,wsp,pkt)-funkcja(x)) %wykres błędu interpolacji
title("Błąd interpolacji");
xlabel("oś x");
ylabel("oś y");
end

