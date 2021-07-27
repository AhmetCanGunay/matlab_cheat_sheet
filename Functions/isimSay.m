function isimSay(isimMatrisi)

nameMatrix = [];
numberOfName = [];

for i = 1:length(isimMatrisi)
    bulundu = false;
    sorgulanan = isimMatrisi(i);
    for j = 1:length(nameMatrix)
        icerik = nameMatrix(j);
        if sorgulanan == icerik
            bulundu = true;
            numberOfName(j) = numberOfName(j) + 1;
            break;
        end
    end
    if bulundu == false
        nameMatrix = [nameMatrix sorgulanan];
        numberOfName = [numberOfName 1];
    end
end

for x = 1:length(nameMatrix)
   fprintf('%s isminden %d adet vardır.\n',nameMatrix(x),numberOfName(x)); 
end
