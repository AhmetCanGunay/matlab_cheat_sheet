clear all;
clc;

%% Boolean Veri Tipi

deger1 = true;
deger2 = false;

deger3 = -999;
deger3 = logical(deger3); %0 harici tüm sayılar 'true' değerini alır.

deger4 = logical(0);

deger5 = [1 2 3 4;5 6 7 0 ];%Matrisin içinde 0 varsa o index 0 gerisi 1 döner.
deger5 = logical(deger5);

deger6 = logical(deger1 + deger2);

%% If Statement & Logic Operators

% >,>=,<,<=,==,~=

if deger2
    disp('DOĞRU');
end

ad = input('Adınız:');
yas = input('Yaşınız:');

if yas >= 18
    fprintf('Adınız: %s Yaşınız: %d\n',ad,yas);
else
    fprintf('Adınız: *********** Yaşınız: Yetişkin Değilsiniz!\n');
end


notlar = input('Lütfen Notlarınızı Giriniz:');

ortalama = (notlar(1) + notlar(2) + notlar(3))/3;

if ortalama < 50
    disp('Kaldınız!');
else
    disp('Geçtiniz.');
end

ulke = input('Para Birimini Öğrenmek İstediğiniz Ülkeyi Giriniz:');

if strcmp(ulke,'ABD') == true
    disp('DOLAR');
elseif strcmp(ulke,'Almanya') == true
    disp('EURO');
elseif strcmp(ulke,'İngiltere') == true
    disp('Sterlin');
else
    disp('Yanlış Bir Değer Girdiniz');
end

sayilar = input("Lütfen 3 adet sayı giriniz:");
tercih = input("AO için 1, Max için 2, Min için 3:");

if tercih == 1
    ao = (sayilar(1) + sayilar(2) + sayilar(3)) / 3;
    fprintf("Aritmetik Ortalama: %d\n",ao);
elseif tercih == 2
    maxNumber = max(sayilar);
    fprintf("Max sayı: %d\n",maxNumber);
elseif tercih == 3
    minNumber = min(sayilar);
    fprintf("Min sayı: %d\n",minNumber);
else
    disp("Hatalı Giriş Yapıldı!");
end

% &&(VE) ||(VEYA)

matris1 = [1 5 7;
           3 6 9;
           2 4 8];
matris2 = [1 0 7;
           3 0 2;
           4 6 8];
       
sonuc = matris1 & matris2;%Karşılıklı gelen sayıları 'VE' işlemine tabii tutar.      

% | ve & operatörleriyle || ve && Arasındaki Farklar

sayi1 = 4; sayi2 = 6; sayi3 = 0; sayi4 = 0;

ve1 = sayi1 & sayi2;
ve2 = sayi1 & sayi3;
ve3 = sayi3 & sayi4;
ve4 = sayi1 == 1 & sayi2 == 6;

veya1 = sayi1 | sayi2;
veya2 = sayi1 | sayi3;
veya3 = sayi3 | sayi4;
veya4 = sayi1 == 2 | sayi2 == 4;

% TEK & VE | SAYILARI MANTIKSAL İFADELERE DÖNÜŞTÜREREK (1 VE 0) GİBİ İŞLEM YAPAR.
%Skaler ifadelerde & veya && (| veya ||) aynı çıktıları verecektir.

a = [2 4 0;0 2 3;7 1 0];
b= [6 4 -9;2 3 -3;-1 1 0];

c1 = a & b;
%c2 = a && b; Hatalı kullanım!

d1 = a | b;
%d2 = a || b; Hatalı kullanım!

%Operands to the || and && operators must be convertible to logical scalar values.
%Yani || veya && kullanırken operantların logic bir ifadeye dönüşebilmesi gerekir.
% Buradaki örnekte & ve | matrislerdeki karşılık gelen sayılar üzerinden işlem yapar.

%% Karşılaştırma ve Mantıksal Operatörlerin Matrislerle Kullanımı

sayilar = [18 2 4 3 10;
           14 5 15 7 1;
           6 9 15 14 13;
           14 15 8 12 15;
           10 15 13 15 11];

e1 = sayilar < 10;

e1Sayilar = sayilar(e1);

indisler = find(e1);%%!!!!!!!!!!!!

f1 = 3 < sayilar & sayilar < 8 ;

f1Sayilar = sayilar(f1);

g1 = (sayilar < 9 & ~rem(sayilar,2) & sayilar ~=2);
g1Sayilar = sayilar(g1);

%Değer Değiştirme

sayilar1 = sayilar;
sayilar1(sayilar1 < 10) = 0;
sayilar1(sayilar1 ~= 0) = nan;

sayilar1(isnan(sayilar1)) = -1;

h1 = ~sayilar1;

%% Categorical Veri Tipi

sicaklik = [18;42;46;10;38];
tarihler = {'15-05-2000';'09-02-2010';'21-06-2008';'04-05-2009';'16-12-2020'};
sehirler = {'Trabzon';'Ankara';'Adana';'Trabzon';'Adana'};
sehirler = categorical(sehirler);

tablo = table(sicaklik,tarihler,sehirler);

indeksler = tablo.sehirler == 'Adana';

veriler = tablo(indeksler,:);

ogrenciler = {'Çalışkan','Tembel';'Orta','Tembel';'Çalışkan','Tembel'};
ogrenciTipleri = {'Çalışkan','Tembel','Orta','Zeki ama çalışmıyor'};
kategorikOgrenciler = categorical(ogrenciler,ogrenciTipleri);

%kategori Görüntüleme

kategoriler = categories(kategorikOgrenciler);

%Veri Ekleme

kategorikOgrenciler(4,1) = 'Zeki ama çalışmıyor';
kategorikOgrenciler(4,2) = 'Orta';

degerler = [10 15 20;15 10 20;20 10 15];

%10 - kırmızı 15 - Yeşil 20 - Mavi MOR = 25

renkler = {'Kırmızı','Yeşil','Mavi','Mor'};

kategorikVeriler = categorical(degerler,[10 15 20 25],renkler);

summary(kategorikVeriler); %Sütunlara bakıp herbir birimden kaç tane olduğunu söyler.

indexler = kategorikVeriler == 'Kırmızı';

sonuc = kategorikVeriler(indexler);

vasitalar = ["Araba","Jet","Uçak","Helikopter",missing,"Araba"];

kategorik = categorical(vasitalar);

x = [-1;0.2;0.45;0.65;0.1;0.42;0.24;0.25;0.9;0.8;0.14;0.7;0.9];
y = discretize(x,[0 0.25 0.75 1],'categorical',{'Küçük','Orta','Büyük'});

summary(y);
categories(y);

%% ------------------------ÖRNEK ÇALIŞMALAR------------------

%---1.Örnek
x = input('Bir Tam Sayı Değeri Giriniz:');

if x < 0
    y = abs(x);

elseif x == 0
    y = -1;
    
else
    y = mldivide(x,2);
end

fprintf('y değeri: %d\n',y);

%---2.Örnek

sayi = input('Bir Tam Sayı Değeri Giriniz:');

if ((100 < sayi) && (sayi < 150) || (45 < sayi) && (sayi < 60))
   disp('Sayı Verilen Değer Aralıklarındadır.');
else
    disp('Aralıkta Değil!');
end    

%---3.Örnek

% sayi = input('Bir Tam Sayı Değeri Giriniz:');
% 
% if mod(sayi,15) == 0
%     disp("Sayı 15'e Tam bölünür.");
% else
%     disp("Tam olarak Bölünmez!");
% end

%---4.Örnek

saat = input('Lütfen Bir Saat Giriniz:');

if 0 < saat && saat <= 5
    disp('Gece');
elseif 5 < saat && saat <= 10
    disp('Sabah');
elseif 10 < saat && saat <= 16
    disp('Öğlen');
elseif 16 < saat && saat <= 23
    disp('Akşam');
else
    disp('Hatalı Değer');
end

%---5.Örnek

matris = [5 10 7;6 9 12;2 10 39];

toplam = matris(1)+matris(2)+matris(3)+matris(4)+matris(5)+matris(6)+matris(7)+matris(8)+matris(9)

if toplam < 100
    disp('Kaldı');
elseif toplam == 100
    disp('Sınırda');
else
    disp('Geçti');
end

%---6.Örnek

matris2 = [1 5 9;5 8 12]

ortalama = (matris2(1)+matris2(2)+matris2(3)+matris2(4)+matris2(5)+matris2(6))/6;

matris2(matris2 < ortalama) = 0

%---7.Örnek

toplamKaresi = 0;
toplamKupu = 0;
matris3 = [-1 -1 -1;-1 -1 -1]

if matris3(1) < 0
    toplamKaresi = toplamKaresi + power(matris3(1),2);
else
    toplamKupu = toplamKupu + power(matris3(1),3);
end   
if matris3(2) < 0
    toplamKaresi = toplamKaresi + power(matris3(2),2);
else
    toplamKupu = toplamKupu + power(matris3(2),3);
end  
if matris3(3) < 0
    toplamKaresi = toplamKaresi + power(matris3(3),2);
else
    toplamKupu = toplamKupu + power(matris3(3),3);
end  
if matris3(4) < 0
    toplamKaresi = toplamKaresi + power(matris3(4),2);
else
    toplamKupu = toplamKupu + power(matris3(4),3);
end 
if matris3(5) < 0
    toplamKaresi = toplamKaresi + power(matris3(5),2);
else
    toplamKupu = toplamKupu + power(matris3(5),3);    
end  
if matris3(6) < 0
    toplamKaresi = toplamKaresi + power(matris3(6),2);
else
    toplamKupu = toplamKupu + power(matris3(6),3);
end

fprintf('Toplam Karesi: %d\n',toplamKaresi);
fprintf('Toplam Küpü: %d\n',toplamKupu);

%---8.Örnek

isim = 'Bkasya';

if (isim(1) == 'a' || isim(1) == 'A') && (isim(6) == 'a' || isim(6) == 'A')
    disp('Geçerli');
else
    disp('Geçersiz');
end

%---9.Örnek


sayilar = [1 34 21 9];

isim = 'anıl';

if mod(sayilar(1),2) == 0 || isim(1) == 'a' || isim(1) == 'ı' || isim(1) == 'o' || isim(1) ==  'u'
    fprintf('%s %d\n',isim(1),sayilar(1));
end

if mod(sayilar(2),2) == 0 || isim(2) == 'a' || isim(2) == 'ı' || isim(2) == 'o' || isim(2) == 'u'
    fprintf('%s %d\n',isim(2),sayilar(2));
end

if (mod(sayilar(3),2) == 0) || isim(3) == 'a' || isim(3) == 'ı' || isim(3) == 'o' || isim(3) ==  'u'
    fprintf('%s %d\n',isim(3),sayilar(3));
end

if mod(sayilar(4),2) == 0 || isim(4) == 'a' || isim(4) == 'ı' || isim(4) == 'o' || isim(4) ==  'u'
    fprintf('%s %d\n',isim(4),sayilar(4));
end

%---10.Örnek

tablo = [20 40 60; 40 50 60;75 15 30];

ort1 = (tablo(1,1) + tablo(1,2) + tablo(1,3)) / 3;
ort2 = (tablo(2,1) + tablo(2,2) + tablo(2,3)) / 3;
ort3 = (tablo(3,1) + tablo(3,2) + tablo(3,3)) / 3;

ortalamalar = [ort1,ort2,ort3];

if max(ortalamalar) == ort1
    fprintf('Öğrenci1: %d\n',ort1);
end

if max(ortalamalar) == ort2
    fprintf('Öğrenci2: %d\n',ort2);
end

if max(ortalamalar) == ort3
    fprintf('Öğrenci3: %d\n',ort3);
end