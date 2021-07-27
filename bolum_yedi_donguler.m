%% -------------------------------DÖNGÜLER(LOOPS)-------------------
%% For Döngüsü

for donguDegiskeni = 1:1:5 % 1 = Başlangıç, 1 = Adım (Step) Sayısı, 5 = Bitiş
    disp('Hello World');
end

for i = 1:1:10
   fprintf('%d\n',i); 
end
    
for a = 10:-1:0
    fprintf('%d\n',a);
end

%---1.Örnek
toplam =0;

sayi = input('Lütfen Bir Sayı Giriniz:');

for loop = 0:2:sayi
    toplam = toplam + loop;
end

fprintf('Toplam: %d\n',toplam);

%---2.Örnek

faktoriyel = 1;

sayi2 = input('Lütfen Bir Sayı Giriniz:');

for loop = 2:sayi2
   faktoriyel = faktoriyel * loop; 
end

fprintf('%d nin Faktöriyeli: %d\n',sayi2,faktoriyel);


notSayisi = input('Girmek İstediğiniz Not Sayısını Yazınız:');
toplam = 0;

for i = 1:notSayisi
    not = input('Not:');
    toplam = toplam + not;
end

ort = toplam / notSayisi;

if ort >= 3 
    fprintf('Geçtiniz. Notunuz: %.2f\n',ort);
else
    fprintf('Kaldınız. Notunuz: %.2f\n',ort);
end

% Değişkeni Kontrolsüz Arttırma

degerler = [1 -5 4 7 -8];
sayac = 1;

for i = degerler
    karesi(sayac) = i ^ 2;
    sayac = sayac + 1;
end

%% Break & Continue Deyimleri

for i = 1:10
    if i == 5
        break;
    end
    fprintf('---%d\n',i);
end

for i = 1:10
    if i == 4
        continue;
    end
    fprintf('%d\n',i);
end

toplam = 0;

for i = 1:5
    sayi = input('Lütfen Bir Sayı Giriniz:');
    if sayi < 0
        break;
    end
    toplam = toplam + sayi;
end

ort = toplam / (i-1);
fprintf('Ortalama: %d\n',ort);

%% ALIŞTIRMA (ASAL SAYI OLUP OLMADIĞINI BULMA)

sayi = input('Lütfen Bir Sayı Giriniz:');
asalMi = true;

for i = (sayi - 1):-1:2 
    
    if mod(sayi,i) == 0
       asalMi = false;
       break;
    end
end

if asalMi == true
    disp('Asal');
else
    disp('Asal Değil!');
end

%% While Döngüsü

%Faktöriyel Hesabı
faktoriyel = 1;
sayi = input('Lütfen Bir Sayı Giriniz:');
i = 1;
while i <= sayi
    faktoriyel = faktoriyel * i;
    i = i + 1;
end
disp(faktoriyel);


%% Girilen Değerlerin Asal Olup Olmadığını Kontrol Etme

degerler = input('Lütfen Sayıları Giriniz:');
sayiAdedi = length(degerler);
i = 1;

while i <= sayiAdedi
    asalMi = true;
    sayi = degerler(i);
    
    for x = (sayi - 1):-1:2
        if mod(sayi,x) == 0
            asalMi = false;
            break;
        end
    end
    if asalMi == true
        fprintf('%d\t',sayi);
    end
    i = i + 1; 
end
% 
%% Mükemmel Sayı Bulma
%6 Bölenler = 1,2,3 -> 1+2+3=6 

toplam = 0;
sayi = input('Lütfen Bir Sayı Giriniz:');
i = 1;

while i < sayi
    if mod(sayi,i) == 0
        toplam = toplam + i;
    end
    i = i + 1;
end

if toplam == sayi
    fprintf('%d Mükemmel Sayıdır\n',sayi);
else
    fprintf('%d Mükemmel Değildir!\n',sayi);
end

%Amstrong Sayısı Bulma
%371 -> 3^3 + 7^3 + 1^3 = 371

%1.Yöntem

sayi = 370;
sayiStr = num2str(sayi);
sayiLength = length(sayiStr);
k = 1;
toplam = 0;

while k <= sayiLength
    basamak = str2double(sayiStr(k));
    toplam = toplam + power(basamak,sayiLength);
    k = k + 1;
end

if toplam == sayi
   fprintf('%d Sayısı Bir Amstrong Sayısıdır.',sayi);
else
    fprintf('%d Sayısı Bir Amstrong Sayısı Değildir!.',sayi);
end

%2.Yöntem

toplam = 0;
sayi = 371;
basamakSayisi = 0;
cSayi = sayi;

while cSayi > 0
    cSayi = fix(cSayi / 10);
    basamakSayisi = basamakSayisi + 1;
end

cSayi = sayi;

while cSayi > 0
   toplam = toplam + power(fix(mod(cSayi,10)),basamakSayisi);
   cSayi = fix(cSayi / 10);
end

if toplam == sayi
   fprintf('%d Sayısı Bir Amstrong Sayısıdır.',sayi);
else
    fprintf('%d Sayısı Bir Amstrong Sayısı Değildir!.',sayi);
end


%% Switch-Case Yapısı

ay = input('Bulunduğunuz Ayın Sayısal Değerini Giriniz:');

switch ay
    case 1
        disp('Ocak');
    case 2
        disp('Şubat');
    case 3
        disp('Mart');
    case 4
        disp('Nisan');
    case 5
        disp('Mayıs');
    case 6
        disp('Haziran');
    case 7
        disp('Temmuz');
    case 8 
        disp('Ağustos');
    case 9 
        disp('Eylül');
    case 10
        disp('Ekim');
    case 11
        disp('Kasım');
    case 12
        disp('Aralık');
    otherwise
        disp('Yanlış Bir Değer Girdiniz');
end

%% DÖNGÜ ÇALIŞMA SORULARI

%1.Örnek

sayi1 = input('Birinci Sayıyı Giriniz:');
sayi2 = input('İkinci Sayıyı Giriniz:');
bolum = 0;

while sayi1 >= sayi2
    sayi1 = sayi1 - sayi2;
    bolum = bolum + 1;
    
end

if sayi1 == 0
    fprintf('Tam Olarak Bölünüyor. Bölüm Değeri: %d\n',bolum);
else
    fprintf('Tam Olarak Bölünmüyor. Kalan: %d\nBölüm Değeri: %d',sayi1,bolum);
end

%2.Örnek

%1.Yol

matris = [1 5 9 13;55 12 32 20;5 8 14 21;25 34 22 19];
minimum = min(matris,[],'all');
maximum = max(matris,[],'all');

%2.Yol

mak = matris(1,1);
mini = matris(1,1);

for i = 1:4
    for j = 1:4
        sayi = matris(i,j);
        if sayi > mak
            mak = sayi;
        elseif sayi < mini
            mini = sayi;
        end
    end
end

toplam = mini + mak;
fprintf('Max Sayı: %d\nMin Sayı: %d\nToplam = %d\n',mak,mini,toplam);

%3.Örnek

toplam = 0;
adet = 0;

for sayi = 1:100
  cSayi = sayi;
  while cSayi >= 3
     cSayi = cSayi - 3; 
  end
  if cSayi == 0
     toplam = toplam + sayi;
     adet = adet + 1;
  end
end

ort = toplam / adet;
fprintf('Ortalama: %d\n',ort);

%4.Örnek

isim = 'korayın adı nedir bilmem nedir';
isimLength = length(isim);
inceAdet = 0;
kalinAdet = 0;
bosluk = 0;
kalinUnluler = {'a','ı','o','u'};
inceUnluler = {'e','i','ö','ü'};
for i = isim
   switch i
       case kalinUnluler
           kalinAdet = kalinAdet + 1;
       case inceUnluler
           inceAdet = inceAdet + 1;
       case (' ')
           bosluk = bosluk + 1;
   end        
end

fprintf('Kelime: %s\nİnce Ünlü Sayısı: %d\nKalın Ünlü Sayısı: %d\nGeri Kalan: %d\n',isim,inceAdet,kalinAdet,bosluk);

%5.Örnek

sayi = 20;

for i = sayi:-1:2
    asalMi = true;
    if mod(sayi,i) == 0
        for j = (i-1):-1:2
            if mod(i,j) ~= 0
                continue;
            else
                asalMi = false;
                break;
            end
        end
        if asalMi == true
            disp(i);
        end
    end
end

%6.Örnek

matris = [1 3 15 27 33;12 2 24 36 10;13 24 26 11 32;41 52 61 41 3;5 8 17 84 25];

mak = matris(1,1);
mini = matris(1,1);
satirNo = 1;
sutunNo = 1;
for i = 1:5
    for j = 1:5
        if matris(i,j) > mak
            satirNo = i;
        elseif matris(i,j) < mini
            sutunNo = j;
        end
    end
end

fprintf('Satır: %d\n',satirNo);
fprintf('Sütun: %d\n',sutunNo);
fprintf('Toplam: %d\n',satirNo + sutunNo);
    
%7.Örnek

for i = 97:122
    disp(char(i));
end

%8.Örnek

n = input('Bir Sayı Giriniz:');

for i = 1:n
    sirali{i} = 1:i;
end

%9.Örnek

kod = input('Hata Kodunu Giriniz:');

switch kod
    case 200,disp('OK');
    case 401,disp('Unauthorized');
    case 403,disp('Forbidden');
    case 404,disp('Not Found');
    case 502,disp('Bad Gateway');
    case 505,disp('HTTP Version not Supported');
    otherwise,disp('Böyle Bir Hata Kodu Bulunmamaktadır!');
end  

%10.Örnek

sayi = input('Bir Sayı Giriniz:');

switch sayi
    case {1,3,5,7,9,11,13,15,17,19},fprintf('%d Sayısı Tek Sayıdır.',sayi);
    case {0,2,4,6,8,10,12,14,16,18,20},fprintf('%d Sayısı Çift Sayıdır.',sayi);
    otherwise,disp('Girdiğiniz Değer Hatalı ya da Belirlenen Sınırlar İçerisinde Bulunmuyor!');
end
        


