function toplam = fTopla(f,varargin)
    toplam = 0;
    for i = 1:length(varargin)
        deger = varargin{i};
        if isnumeric(deger)
            sonuc = f(deger);
            toplam = toplam + sonuc;
        end
    end

end