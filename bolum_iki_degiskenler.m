%% -----------------------DEĞİŞKENLER-------------------------
%% Nümerik Tipler

sayi = 10.4;

%Tip Sorgulama

whos sayi

sayi1 = 19.1;

whos sayi1

sayi2 = single(19.1);

whos sayi2

% -128<int8<127 Eğer aralık aşılırsa en yakın sayıya gider!

sayi3 = int8(-129); 

sayi4 = int8(128);

sayi_5=3;

whos sayi_5

% Int da sayı float ise yukarı ya da aşağı tamsayıya yuvarlanır.
sayi6 = int8(91.4);
whos sayi6

sayi7 = int16(18);
whos sayi7

sayi8 = int32(55);

whos sayi8

sayi9 = int64(-30.4);

whos sayi9

% Unsigned int8 0<x<255 arasını alır. Negatif verilirse 0, 255 üstü
% verilirse 255 girilir.
sayi10 = uint8(sayi9);

whos sayi10

sayi11 = uint8(256);

whos sayi11

%uint 8,16,32,ve 64 versiyonları vardır.

%% String Değişkenler

ad = "ahmet";

soyad = 'günay';

whos ad
whos soyad

a =  4;
b = "4";

%{
Çoklu 
Yorum
Satırı
%}

%% Bölümlere Ayırma İşlemi

bolum1 = 5;

%% 

bolum2 = 10;

%% Matrix ve Vektör Tanımlama 

%Değerler Arasına Boşluk Konularak Tanımlanabilir.

vector1 = [1 2 3 4];
whos vector1

%veya Değerler Arasına Virgül Konularak Oluşturulabilir.

vector2 = [10,15,20,25,30];
whos vector2

%Matrix Oluşturma

matrix1 = [3 2 0;1 6 3;5 7 2];

matrix2 = [9,13,5,2;1,11,7,6;3,7,4,1;6,0,7,10];

matrix3 = [3 2 2;
           0 4 6;
           0 0 5];
 degerler = [-10 29 -14 1 12;
              2 11 -17 25 14;
              4 9 -1 4 0;
              -15 21 100 54 38 ];
 %1. Satır ve 3. Sütunda Bulunan Değer
deger1_3 = degerler(1,3);

%Saymaya 1. Değerden Başlanır ve Sütunda Aşağı Doğru Devam Edilir.
deger6 = degerler(6); %11 Değerini Vermelidir.

%Değer 2 ve Değer 7 Ayrı Ayrı Alındı.
sayilar2ve7 = degerler([2,7]); 

%2. Satır ve 4. Satırda 3. Sütun Elemanını Getirme

degerler2ve4_3 = degerler([2,4],3);

matris1(1) = 4;
matris1(2) = 1;
%Aradaki Değerler 0 Olarak Yazılır.
matris1(4) = 3;

matris2(2,3) = 5;

%Satırlardaki Tüm Elemanları Alma

satir2 = degerler(2,:);

%Sütunlardaki Tüm Elemanları Alma

sutun4 = degerler(:,4);

%1'den Başlayıp 5'e Kadar Giden Matrix
degerler2 = 1:5;

%0'dan Başla 10'a Kadar İkişer Git

degerler3 = 0:2:10;

%Atlarken son sayı uymuyorsa en uygun son sayıda durur.
degerler4 = 0:2:9;

%2. ve 4. Satırlar Arası, 3. ve 5. Sütunlar Arası
secilenSatirlar = 2:4;
secilenSutunlar = 3:5;
degerlerSon = degerler(secilenSatirlar,secilenSutunlar);

%% String ve Karakter Matrislerinde Erişim Mantığı

isimStr = "Ahmet";

%{
Stringi indexlemeye çalışırsak stringin kendisi gelecektir.
2.indexi almaya çalışırsak hata mesajı ile karşılaşırız.
%}

ilkKarakter = isimStr(1);
%ikinciSayi = isimStr(2);!Index exceeds the number of array elements (1).

myNumber = 13;
firstNumber = myNumber(1);

nameCharArray = 'GÜNAY';
whos nameCharArray

char1 = nameCharArray(1);
char2 = nameCharArray(2);

%Stringi Karakter Dizisine Çevirme
name = "Mehmet";
whos name
name = char(name);
whos name

chr1 = name(1);

names = ["Can","Gülsu","Berkay";
         "Kaan","Ceren","Beyza";
         "Bekir","Furkan","Merve"];
 
names1_2 = names(1,2); 
names5 = names(5);

%Berkay'daki 'R' harfine ulaşma
charR = char(names(1,3));
r = charR(3); 

%{
Burada her satırdaki toplam karakter sayısı aynı olmadığından hata
alırız!(Dimensions of arrays being concatenated are not consistent.)
Hatanın çözümü ya eşit sayıda karakterli değerler kullanmak ya da {}
kullanmaktır.
%}
cities = {'İstanbul','Kayseri';
          'Ankara','Gaziantep';
          'Aydın','Muğla'};
 
namesArray = ['Feyzi','Harun','Esmir';'Alper','Melih','Eylem';'Kadir','Emrah','Adnan'];
 

sayilar1 = [1 2 3 4;5 6 7 8;9 10 11 12];

deger = sayilar1(1,1,1);

%deger = sayilar1(1,1,2); 
%!Index in position 3 exceeds array bounds (must not exceed 1)hatası alınır

sayilar1(:,:,2) = [13 14 15 16;17 18 19 20;21 22 23 24];

%Sayfalara erişim
sayfa1 = sayilar1(:,:,1);
sayfa2 = sayilar1(:,:,2);

%Yeni boyut oluşturmak için cat fonksiyonunu kullanma
dimension3 = [10,20,30,40;50,60,70,80;90,100,110,120];

sayilar3D = cat(3,sayilar1,dimension3);

deger1 = sayilar3D(:,:,1);
deger2 = sayilar3D(:,:,2);
deger3 = sayilar3D(:,:,3);

sayilarSon = cat(3,sayilar1,sayilar3D);

%İlk sayfayı -1 ve yeni bir sayfa eklemek
sayilarSon(:,:,1) = -1;
sayilarSon(:,:,6) = 0

%2.sayfa 3.satır 2. sütun değerini alma
d1 = sayilarSon(3,2,2);

%Tüm sayfalardaki ilk üç sütun değerlerini alma
d2 = sayilarSon(:,1:3,:);

%Sadece 1. sayfadaki değerleri görmek istersek
d2Sayfa1 = d2(:,:,1);

%SayılarSon'daki 2. ve 4. sütun değerlerini alma
sayilarSon2_4 = sayilarSon(:,[2,4],:);

%% Cell Veri Tipi

numberArray = [1 2 3 4;5 6 7 8;9 10 11 "Can"];

isimler = ["Ahmet","Mert","Aslan";
           "Cengiz","Sibel","Tuğçe";
           "Elanur","Esma",1];
%! Eğer arrayler farklı tiplerden oluşuyorsa kısmına dikkat et!


cell1i = {1,2,3;
         "yazı",4,'karakter dizisi'};
     
cell2 = {[1,2,3],[4,5];
         "Ahmet",{50,60}
         [2,3,5],{'İstanbul',34}};
     
cell1 = {[3,55,77],"Ankara"};
cell1(2,:) = {32,'Eskişehir'};

%2.Satır değerlerini alma
satir2 = cell1(2,:);

%Cell'de belirli bir değeri alma
cell1_2 = cell1{1,2};

%Fonksiyon ile cell oluşturma
c1 = cell(4);

%Eleman ekleme
c1{1,1} = "Ömer";
c1{1,2} = "Faruk";
c1{1,3} = [10,20,30];

c2 = cell(3,4,2);

%% Table veri tipi

Adi = {'Ahmet';'Johnson';'Williams';'Sibel';'Yasin'}; 
Yasi = [28;40;41;54;19];
Boyu = [150;160;140;180;195];
Kilosu = [75;64;67;81;84];
Ulke = {'Türkiye';'Almanya';'ABD';'Türkiye';'Türkiye'};

tablo = table(Adi,Yasi,Boyu,Kilosu,Ulke);

%Belirli bir değere göre sıralama
tablo = sortrows(tablo,'Ulke','descend');

%Tablodan veri alma

yas = tablo.Yasi;
ad = tablo.Adi;

%Veri Yükleme

load patients

tablo2 = table(Age,Height);

hastaDegerleri = tablo2.Variables;

tablo2.Properties.DimensionNames = {'Hasta';'Veriler'};
anlamlar = tablo2.Properties.DimensionNames;

tablo2.Properties.RowNames = LastName;

isimler = tablo2.Hasta(1:6);

%İlk 5 sıradaki tüm verileri getirme

tablo3 = head(tablo2,5); % tail fonksiyonu sondan 5 adeti verir.

degerler = tablo2({'Davis','Johnson'},:);

%% Değişkenlerle ilgili işe yarar fonksiyonlar

ifade1 = 'for';
ifade2 = 'while';
ifade3 = 'try';
ifade4 = 'global';
ifade5 = 'watch';

%keyword olup olmadığını belirleme(for,while,try keyworde örnektir.)
d1 = iskeyword(ifade1);%1
d2 = iskeyword(ifade2);%1
d3 = iskeyword(ifade3);%1
d4 = iskeyword(ifade4);%1
d5 = iskeyword(ifade5);%0

ifade1 = '1adi';%değişken adı olamaz!
ifade2 = '.soyadi';%değişken adı olamaz!
ifade3 = 'okulun adi';%değişken adı olamaz!
ifade4 = 'maasi';%olabilir
ifade5 = 'kisinin_yasi';%olabilir

%değişken adına uygun olup olmadığını belirleme
d1 = isvarname(ifade1);
d2 = isvarname(ifade2);
d3 = isvarname(ifade3);
d4 = isvarname(ifade4);
d5 = isvarname(ifade5);
     
%double tipi kontrol
ifade1 = 5.12;
sonuc1 = isa(ifade1,'double');%return 1
sonuc2 = isa(ifade1,'string');%return 0

%string kontrol
ifade2 = "ahmet";
sonuc3 = isa(ifade2,'string');%1

%karakter dizisi kontrol
ifade3 = 'ifade';
sonuc4 = isa(ifade3,'char');%1
sonuc5 = isa(ifade3,'string');%0

%cell kontrol
ifade4 = {[1 2 3],"sonuç",{10,20}};
sonuc6 = isa(ifade4,'cell');%1
sonuc7 = isa(ifade4,'string');%0

ifade5 = uint8(21.7);
sonuc8 = isa(ifade5,'integer');%1
sonuc9 = isa(ifade5,'double');%0

%isinteger fonksiyonu kullanımı

sayi = 3;
sonuc10 = isinteger(sayi); %0 değer int değil double'dır!

%integere çevirme

sayi = int8(sayi);
sonuc11 = isinteger(sayi); %1

%isnumeric fonksiyonu

ifade6 = "13.7";
ifade7 = 13.7;
ifade8 = {13.7};

sonuc12 = isnumeric(ifade6);%0
sonuc13 = isnumeric(ifade7);%1
sonuc14 = isnumeric(ifade8);%0

%string kontrol

ifade9 = "Anthony Hopkins";
ifade10 = 'Mert Derin';
ifade11 = {"Garry Williams"};

sonuc15 = isstring(ifade9);%1
sonuc16 = isstring(ifade10);%0
sonuc17 = isstring(ifade11);%0

ifade12 = {12,"İstanbul"};
sonuc18 = iscell(ifade12);%1

ifade13 = {'Ankara','İzmir'};
sonuc19 = iscellstr(ifade12);%0
sonuc20 = iscellstr(ifade13);%1

maksimum = namelengthmax;

exist ifade1;%workspace'de ans değeri 1 oluşacak.

d1 = exist('ifade1');%Eğer workspace'de varsa 1 yoksa 0.

ifade14 = 3.14;
ifade15 = "sayı";

donusum1 = double(ifade14);
donusum2 = double(ifade15);

sonuc21 = isnan(donusum1);%0
sonuc22 = isnan(donusum2);%1

%% Map Veri Tipi

keySet = [6 34 35];
valueSet = {'Ankara','İstanbul','İzmir'};

%map oluşturma

map = containers.Map(keySet,valueSet);

mapDeger1 = map(34);

veriSayisi = map.Count;

keyType = map.KeyType;

valueType = map.ValueType;

keySet2 = [101 285 423 549 285];%keySetler aynı ise sondaki 285 değeri tutulur.
valueSet2 = ["Yasin","İlker","Kenan","Sena","Emin"];

map2 = containers.Map(keySet2,valueSet2);

deger285 = map2(285);

kisiler = {'Ahmet','Kemal','Yusuf'};
ahmetNotlar = [60 90];
kemalNotlar = [75 95];
yusufNotlar = [70 65];

degerler = {ahmetNotlar,kemalNotlar,yusufNotlar};

map3 = containers.Map(kisiler,degerler);

notlar = map3('Ahmet');

keySet3 = {'Yılmaz','Batu','Pamuk'};
yilmazYaslar = [10 25 19 14];
batuYaslar = [24 32 5];
pamukYaslar = [3 5 11 40 34 5];

valueSet3 = {yilmazYaslar,batuYaslar,pamukYaslar};

map4 = containers.Map(keySet3,valueSet3);

yilmazAilesi = map4('Yılmaz');

%Boş Map Oluşturma

emptyMap = containers.Map('KeyType','char','ValueType','double');

emptyMap('Ankara') = 6;
emptyMap('İstanbul') = 34;
emptyMap('İzmir') = 35;

%Anahtar Değerlerini Alma
keyler = emptyMap.keys;%VEYA
keys2 = keys(emptyMap);
k1 = keyler{2};

%Değerleri Alma

values1 = values(emptyMap);%VEYA
values2 = emptyMap.values;

v1 = values1{1};

%Birden Çok Değer Getirme

arananlar = {'İstanbul','İzmir'};

valuesArananlar = values(emptyMap,arananlar);

%Map'den Değer Silme

remove(emptyMap,'İstanbul');
anahtarlarSon = keys(emptyMap);

%Birden Çok Değer Silme

emptyMap('Düzce') = 81;

remove(emptyMap,{'Düzce','İzmir'});

anahtarlarSon2 = keys(emptyMap);

%Değerin Olup Olmadığını Kontrol Etme
sonuc1 = emptyMap.isKey('Ankara');%return 1