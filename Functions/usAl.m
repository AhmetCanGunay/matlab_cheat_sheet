%% Default Parametre Kullanma

function sonuc = usAl(sayi1,sayi2,us)

    if nargin < 2 % Kullanıcı 2'den az parametre girmişse
        error('Bu Fonksiyon En Az 2 Parametre Beklemektedir!');
    elseif nargin == 2
        sonuc = power(sayi1,2) + power(sayi2,2);
    else
        sonuc = power(sayi1,us) + power(sayi2,us);
    end
end