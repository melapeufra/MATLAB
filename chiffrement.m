function cipherKey = chiffrement(message,cle,n)
    message = convertStringsToChars(message);
    alphabet = convertStringsToChars(cle);
    
    for p = 1:length(message)
        for k = 1:length(alphabet)
            if message(p) == ' '
                cipherKey(p) = ' ';
            else if message(p) == alphabet(k)
                    if mod(k+n,26) == 0
                        cipherKey(p) = alphabet(length(alphabet));
                    else
                    cipherKey(p) = alphabet(mod(k+n,26));
                    end
                end   
            end
        end
    end
end 
