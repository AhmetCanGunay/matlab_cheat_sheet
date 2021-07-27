%% Fonksiyonlarda Parametre Gönderme

function yasTespiti(yaslarMatrisi)
maks = max(yaslarMatrisi);
fprintf('En Büyük Yaş: %d\n',maks);

mini = min(yaslarMatrisi);
fprintf('En Küçük Yaş: %d\n',mini);
fark = minus(maks,mini);
fprintf('Yaş Farkı: %d\n',fark);
end