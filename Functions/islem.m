function islem(birinciSayi,ikinciSayi,islemNe)
switch islemNe
    case 'toplama'
        toplam = plus(birinciSayi,ikinciSayi);
        fprintf('%d + %d = %d\n',birinciSayi,ikinciSayi,toplam);
    case 'çıkarma'
        fark = minus(birinciSayi,ikinciSayi);
        fprintf('%d - %d = %d\n',birinciSayi,ikinciSayi,fark);
    case 'çarpma'
        carpim = times(birinciSayi,ikinciSayi);
        fprintf('%d * %d = %d\n',birinciSayi,ikinciSayi,carpim);
    case 'bölme'
        bolme = mldivide(birinciSayi,ikinciSayi);
        fprintf('%d / %d = %.2f\n',birinciSayi,ikinciSayi,bolme);
    otherwise
        disp('Geçersiz İşlem!');
end