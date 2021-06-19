function [wsp] = Newton(pkt,wart)
%Funkcja przyjmuje dwa wektory jednakowej długości: pkt - węzły interpolacji
%wart - wartości funkcji w tych punktach. Jako output otrzymujemy współczynniki
%wielomianu interpolacyjnego w postaci Newtona, zapisane w bazie: 1,
%(x-pkt(1)), (x-pkt(1))(x-pkt(2)), ..., (x-pkt(1))...(x-pkt(n))
if length(wart)~=length(pkt) %sprawdzenie czy wektory są równej długości
    error('Długości wektorów się nie zgadzają')
end
if length(wart(:,1))>1 %sprawdzanie czy wartości podane są w wektorze
    error('Wartości nie mogą być zapisane w macierzy')
end
if length(pkt(:,1))>1 %sprawdzanie czy punkty podane są w wektorze
    error('Punkty nie mogą być zapisane w macierzy')
end
n=length(pkt)-1; %n to stopień wielomianu interpolacyjnego
s=sort(pkt);
for i=1:n
    if s(i)==s(i+1) %sprawdzenie czy punkty nie powtarzają się
        error('Punkty muszą być różne')
    end
wsp=wart; %na początek zapisuję, że współczynniki to wartości
for i=2:(n+1) %wyliczane będą ilorazy różnicowe kolejnych rzędów
    %będą one nadpisywane by zaoszczędzić miejsce w pamięci
    %po każdym kroku w pamięci zostanie tylko "znaczący" iloraz
    wsp(i:(n+1))=(wsp(i:(n+1))-wsp((i-1):n))./(pkt(i:(n+1))-pkt(1:(n+2-i)));
    %w każdym kroku wykonywane są skalarne operacje na wektorach
    %(otrzymanych z poprzedniego kroku)
end
end

