function basarili(varargin)

    maksOrtalama = -1;
    maksIndex = 1;
    sayac = 1;

    while(sayac+2) < length(varargin)
        
        if isstring(varargin{sayac}) && isnumeric(varargin{sayac+1}) && isnumeric(varargin{sayac+2})
            vize = varargin{sayac+1};
            final = varargin{sayac+2};
            ortalama = vize * 0.4 + final * 0.6;

            if ortalama > maksOrtalama
                maksIndex = sayac;
                maksOrtalama = ortalama;
            end
        else
            disp("Öğrenci Verilerini 'Adı'-'Vize Notu'-'Final Notu' Şeklinde Girmelisiniz.");
            break;
        end
        sayac = sayac + 3;
    end
    ad = varargin{maksIndex};
    vizeMaks = varargin{maksIndex+1};
    finalMaks = varargin{maksIndex+2};
    ortalamaMaks = vizeMaks * 0.4 + finalMaks * 0.6;

    fprintf("En Başarılı Öğrencinin\n");
    fprintf("Adı: %s\n",ad);
    fprintf("Vize Notu: %d\n",vizeMaks);
    fprintf("Final Notu: %d\n",finalMaks);
    fprintf("Ortalaması: %d\n",ortalamaMaks);

end