function dondurAsal = asalKontrol(sayilar)
index = 1;
for i = 1:length(sayilar)
   asallik = true;
   sayi = sayilar(i);
   for j = (sayi - 1):-1:2
       if mod(sayi,j) == 0
           asallik = false;
           break;
       end
   end
   if asallik == true;
       dondurAsal(index) = sayi;
       index = index + 1;
   end
       
end


end
