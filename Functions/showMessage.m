function showMessage(message)
    
    if nargin == 0 % Kullanıcı Herhangi Bir Parametre Göndermedi.
        message = 'Kullanıcı Tarafından Herhangi Bir Mesaj Girdisi Oluşturulmadı.';
    end

    fprintf('Kullanıcıdan Gelen Mesaj: %s\n',message);
end