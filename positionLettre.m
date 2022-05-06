function pos = positionLettre(lettre)
    alphabet = ['A','B', 'C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
    for i = 1: length(alphabet)
        if lettre == alphabet(i)
            pos = i;
            break
        end
    end
end
 
%look again
%maybe this time you have luck