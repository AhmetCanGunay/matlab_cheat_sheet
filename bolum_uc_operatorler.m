clc;
clear;
%% -------------------OPERATÖRLER----------------
sayi1 = 4;
sayi2 = 10 ;
sayi3 = -5;

%değişken = ifade operand ifade
%% Matematiksel İşlemler

toplam1 = 4 + 5;
toplam2 = sayi1 + 10;
toplam3 = sayi2 + sayi3;

%Toplam Fonksiyonu
toplamFonksiyon = plus(sayi2,sayi3);

fark1 = sayi3 - sayi1;

%Çıkarma Fonksiyonu
fark2 = minus(sayi3,sayi1);
fark3 = -sayi2;%Sayıyı negatif veya pozitife çevirebiliriz.
fark4 = uminus(sayi1);%Negatif işaretlisini alma fonksiyonu


carpim1 = fark4 * fark1;
carpim2 = times(fark4,fark1);

bolum1 = sayi2 / sayi3;
bolum2 = sayi2 \ sayi3; %Sayı 3 sayı 2'ye bölünür.
bolum3 = mrdivide(sayi2,sayi3);%MatrixRight Division
bolum4 = mldivide(sayi2,sayi3);

kare1 = sayi1 ^ 2; %Üs alma işlemi
kup1 = sayi1 ^ 3;

sonuc = power(sayi1,4);

sayi1 + sayi2;% ans adında bir değişken oluşturur ve ona sonucu atar.

%İşlem Önceliği

%()Parantezler
%Üs alma (^)
%Çarpma ve bölme işlemleri
%Toplama ve çıkarma işlemleri

sayi1 = 4;
sayi2 = 5;
sayi3 = 2;

sonuc1 = sayi1 * sayi2 + sayi3;

sonuc2 = sayi1 * (sayi2 + sayi3);

sonuc3 = sayi2 - sayi1 / sayi3;

sonuc4 = sayi1 / (sayi3 - sayi2);

sayi4 = -3;

sonuc5 = sayi1 * (sayi2 / (sayi1 + sayi4));

sonuc6 = sayi2 - (sayi1 + sayi3 ^ sayi1) * sayi4 ^ sayi3;

%ÖRNEKLER

%1.soru

x = 3;
y = 4;
z = 5;

ornek1 = ((x + y) / 2) * z;

%2.soru

a = 3;

pay = (a ^ 2 + a + 3);

payda = (a ^ 3 + 3 * a ^ 2 + 5 * a + 1);

ornek2 = pay / payda;

%% Örnek soruların fonksiyon ile çözümü

ornek1_1 = times(z,times(0.5,plus(x,y)));

ornek2_1 = mrdivide(plus(plus(power(a,2),a),3),plus(plus(power(a,3),times(3,power(a,2))),plus(1,times(5,a))));

%% Matrislerde Toplama Çıkarma

A = [5 2;0 1;1 9];
B = [2 3;4 1;0 2];

sonuc = A + B;

C = [3 4 9;6 8 6;7 3 4];
D = [1 6 7;6 4 2;4 1 5];

sonuc2 = C - D;

%% Matrislerde Çarpma İşlemi

%Skaler Çarpım

skaler = 4;

E = [6 2 1;3 10 11];
sonuc3 = skaler * E;


X = [2 1;
     5 2];
Y = [1 4;
     3 6];

sonuc4 = X * Y;

%% Cell Toplama İşlemi

isimlerChr = {'Orhan','Yaşar','Lev','Franz'};
soyisimlerChr = {'Pamuk','Kemal','Tolstoy','Kafka'};

isimlerStr = string(isimlerChr);
soyisimlerStr = string(soyisimlerChr);

yazarlar1 = isimlerStr + soyisimlerStr;%VEYA
yazarlar2 = plus(isimlerStr,soyisimlerStr);

yaz1 = yazarlar1(1);

%denemeSonuc = bolumucdeneme * bolumucdeneme1;

%% MATLAB İPUÇLARI

%{
clc - Command Window'daki verileri siler.
clear - Workspace'deki tüm variable'leri siler.
    i) clear a b (a ve b variable' lerini siler.)
    ii) clear sayi* (sayi ile başlayanları siler.)
    iii) clear *ay* (içinde 'ay' kelimesi bulunanları siler.)
    iv) clear -regexp 1$ (sonu 1 ile bitenleri siler.)
clearvars - belirlenen birimleri siler. (clearvars sayi1 sayi2)
    i)clearvars -except sayi1 sayi2 (Verilenler dışındakileri siler.)
    EX: clearvars sayi* -except -regexp 1$ (Sonu 1 ile biten hariç diğer sayiları sil.)
%}

%% Kullanıcıdan Veri Almak
% 
% ad = input('Lütfen Adınızı Giriniz:');
% soyad = input('Lütfen Soyadınızı Giriniz:');
% 
% adSoyad = plus(ad,soyad);

%% Kullanıcıya Veri Göstermek

%Örnek-1

disp('MATLAB');
disp('Öğreniyorum')

%Örnek-2 

% not = input('Aldığınız Not:');
% disp(not);
% disp(['Notunuz:' num2str(not)]);

%Örnek-3

degerler = [10 15 20 25];
disp(degerler);

%Örnek-4

mesaj = 'Daha Ayrıntılı Bilgi için <a href="http://www.google.com">TIKLAYIN</a>';
disp(mesaj);

%Örnek-5

marka = input('Telefonun Markası:');
fiyat = input('Fiyatı:');

mesaj2 = sprintf("%s telefonunun fiyatı %d TL'dir.",marka,fiyat);
disp(mesaj2);

fprintf("%s Telefonun Fiyatı %d TL'DİR.\n",marka,fiyat);