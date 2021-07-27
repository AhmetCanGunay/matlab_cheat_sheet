%% --------------------------FONKSİYONLAR------------------
%%

selamla();
topla();

mesajGoster('Naber!');
islem(3,5,'bölme');

yaslar = [25 32 81 22 19 2 41];
yasTespiti(yaslar);


i = 1;
isimler = [""];

while true
   isim = input('Öğrenci İsmi Giriniz:','s');
   if isim == "cik"
       break;
   end
   isimler(i) = string(isim);
   
   notlar(i,1) = input([isim ' Adlı Öğrencinin Vize Notu:']);
   notlar(i,2) = input([isim ' Adlı Öğrencinin Final Notu:']);
   
   i = i + 1;
end
ogrenciGoster(isimler,notlar);


sayilar = [10 21 11 12 58 59 72 80];
kontrolEt(sayilar);

sayilar = [2 4 5 7];

asalKontrol(sayilar);

[p,n] = ayir([1 2; -14 22; -34 -79; -55 11; 22 56]);

rGeriyeSay(5);

for i = 1:10
    fprintf('%d ! = %d\n',i,factorial(i));
end

for i = 1:5
    fprintf('%d: %d\n',i,fibonacci1(i));
end

showMessage('Benim Yazdığım Mesaj');
showMessage();

usAl(3,4);
nargin('usAl');
nargout('usAl');

goster(1,2,'Ahmet',[1,1,3],{true,12});

basarili("Ahmet",40,60,"Cahit",70,80,"Ufuk",50,100,"Selin",40,50);

[ao,go] = hesapla("ortalama")

[k1 k2 k3 k4] = hesapla("kareHesapla",2,5,7,11);

% Function Handle

deger = @kareAl;

deger(3)

deger([4 8])

f1 = @kareAl;
s1 = fTopla(f1,1,2,3,4,5);

f2 = @karekok;
s2 = fTopla(f2,4,9,16,25);

f3 = @mutlakDeger;
s3 = fTopla(f3,-1,-10,5,-12,0,45,-21);

%Anonymous Functions

kupAl = @(sayi) sayi .^ 3;

d1 = kupAl(4);
d2 = kupAl([3 5 7]);

fonksiyonlarim = {@(a) a.^2;
                  @(b) b+10;
                  @(a,b) a.^2 + b * 2};
d3 = fonksiyonlarim{3}(2,3);

%CellFun Fonksiyonu

degerler = {1:10,[1;3;5],[]};
[satir,sutun] = cellfun(@size,degerler);

gunler = {'Pazartesi','Salı','Çarşamba','Perşembe','Cuma','Cumartesi','Pazar'};
sonuc = cellfun(@(x) x(1:3),gunler,'UniformOutput',false);


