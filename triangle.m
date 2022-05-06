
function pscl = triangle(n)
    for k = 0:n
        pscl(k+1)= binomial(n,k);
    end
end
