function ogrenciGoster(isimler,notlar)

for i = 1:length(notlar)
   ortalama = notlar(i,1) * 0.4 +  notlar(i,2) * 0.6;
   sonuc(i) = ortalama;
end

[not,index] = max(sonuc);

fprintf('En Yüksek Ortalamaya Sahip Öğrenci: %s\nNotu: %d',isimler(index),max(sonuc));

end