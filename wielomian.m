function [y] = wielomian(x,wsp,pkt)
%Funkcja przyjmuje dwa wektory równej długości: pkt - węzły interpolacji,
%wsp - współczynniki wielomianu interpolacyjnego (które mogą zostać
%wyliczone z funkcji Newton.m) oraz x - punkt. Funkcja zwróci wartość
%wielomianu w punkcie x.
if length(wsp)~=length(pkt) %sprawdzenie czy wektory są tej samej długości
    error('Długości wektorów się nie zgadzają')
end
if length(wsp(:,1))>1 %sprawdzanie czy współczynniki podane są w wektorze
    error('Współczynniki nie mogą być zapisane w macierzy')
end
if length(pkt(:,1))>1 %sprawdzanie czy punkty podane są w wektorze
    error('Punkty nie mogą być zapisane w macierzy')
end
n=length(wsp)-1; %n to stopień wielomianu interpolacyjnego
y=wsp(n+1); %do obliczenia wartości zastosowałem uogólniony schemat Hornera
for i=n:(-1):1
    y=wsp(i)+(x-pkt(i)).*y;
end
end

