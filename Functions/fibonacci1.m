function fibDon = fibonacci1(sayi)
    
    if sayi == 0
        fibDon = 1;
    elseif sayi == 1
        fibDon = 1;
    elseif sayi > 1
        fibDon = fibonacci(sayi-1) + fibonacci(sayi-2);
    end
end