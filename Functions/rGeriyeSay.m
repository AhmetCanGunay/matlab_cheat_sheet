%% Recursive (Özyineli) Fonksiyonlar

function rGeriyeSay(sayi)
if sayi > 0
   disp(sayi);
   rGeriyeSay(sayi-1);
end

end