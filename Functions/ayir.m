%% Birden Fazla Değer Döndürme
function [pozitifler,negatifler] = ayir(sayilar)

[satirSayisi sutunSayisi] = size(sayilar);
pozitifler = [];
negatifler = [];

for i = 1:satirSayisi
    for j = 1:sutunSayisi
        sayi = sayilar(i,j);
        if sayi > 0
            pozitifler = [pozitifler sayi];
        elseif sayi < 0
            negatifler = [negatifler sayi];
        end
    end

end