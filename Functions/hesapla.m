function varargout = hesapla(islem,varargin)
    if ~isstring(islem)
        error("Yapmak İstediğiniz İşlemi String Olarak Giriniz.(Toplama-Ortalama-KareAlma)");
    end
    if nargin < 2
        error("Yapmak İstediğiniz İşlemi ve En Az 1 Sayı Değeri Girmeniz Gerekmektedir.");
    end

    switch islem
        case "topla"
            toplam = 0;
            for i = 1:length(varargin)
                deger = varargin{i};
                if isnumeric(deger)
                    toplam = toplam + deger;
                end
            end
            varargout{1} = toplam;
        case "ortalama"
            carpim = 1;
            toplam = 0;
            sayac = 0;
            for i = 1:length(varargin)
                deger = varargin{i};
                if isnumeric(deger)
                    toplam = toplam + deger;
                    carpim = carpim * deger;
                    sayac = sayac + 1;
                end
            end
    aritmetikOrtalama = 0;
    geometrikOrtalama = 0;
    if sayac > 0
        aritmetikOrtalama = toplam / sayac;
        geometrikOrtalama = carpim ^ (1/sayac);
    end
    varargout{1} = aritmetikOrtalama;
    varargout{2} = geometrikOrtalama;
        case "kareHesapla"
            sayac = 1;
            for j = 1:length(varargin)
                deger = varargin{j};
                if isnumeric(deger)
                    varargout{sayac} = power(deger,2);
                    sayac = sayac + 1;
                end
            end
    otherwise
        error("Lütfen Girdiğiniz İşlemi Kontrol Ediniz!");
    end
end