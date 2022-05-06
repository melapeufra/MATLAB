
function cipher = chiffrer(message,n)
    msg = convertStringsToChars(message);

    for i = 1:length(msg)
        if msg(i) == ' '
            cipher(i) = ' ';
        else    
            pos(i)= positionLettre(msg(i));
            
            if mod(pos(i)+n,26)== 0
                cipher(i) = 'Z';
            else
                cipher(i) = maLettre(mod(pos(i)+n,26));
            end
        end    
    end
    cipher;
end