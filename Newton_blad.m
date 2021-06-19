function [wartosci,przyblizenia,blad] = Newton_blad(funkcja,pkt,xmin,xmax,m)
%Funkcja przyjmuje funkcję - przybliżaną wielomianem interpolacyjnym, pkt -
%węzły interpolacji, xmin i xmax określają przedział punktów a m to ich
%liczba. W odpowiedzi otrzymamy wartości funkcji w m równoodległych
%punktach z podanego przedziału, wartości wielomianu i błąd interpolacji.
if m<2
    error('m musi wynosić co najmniej 2')
end
if xmax<xmin
    error('xmax musi być większe niż xmin')
end
disp('Punkty')
x = [xmin:(xmax-xmin)/(m-1):xmax] %wektor punktów
wartosci=funkcja(x) %wartości funkcji w tych punktach
wart=funkcja(pkt); %wartości funkcji w węzłach interpolacji
wsp=Newton(pkt,wart); %obliczenie współczynników wielomianu
przyblizenia=wielomian(x,wsp,pkt) %wartości wielomianu
blad=przyblizenia-wartosci
end

