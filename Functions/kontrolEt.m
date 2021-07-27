function donenVeriler = kontrolEt(sayilar)

for i = 1:length(sayilar)
    sayi = sayilar(i);
   if mod(sayi,2) == 0
       donenVeriler(i) = "Çift";
   else
       donenVeriler(i) = "Tek";
   end
end

end