%% Fonksiyonlarda Değer Döndürme

function remain = modAl(sayi1,sayi2)
if sayi1 > 0 && sayi2 > 0 % Seçenek 1
    secenek = 1;

elseif sayi1 < 0 && sayi2 < 0
    sayi1 = -sayi1;
    sayi2 = -sayi2;
    secenek = 2;
    
elseif sayi1 > 0 && sayi2 < 0
    sayi2 = -sayi2;
    secenek = 3;
    
else
    sayi1 = -sayi1;
    secenek = 4;
    
end

while sayi1 >= sayi2
    sayi1 = sayi1 - sayi2;
end

remain = sayi1;

if remain ~= 0
    switch secenek
        case 1
            remain = sayi1;
        case 2
            remain = -sayi1;
        case 3
            remain = sayi1 - sayi2;
        case 4
            remain = sayi2-sayi1;
    end
end