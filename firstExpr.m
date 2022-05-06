function firstExpr(n)
    sum = 0;
    for ka = 0:n
        sum = binomial(n,ka)+sum;
    end    
    if sum == 2^n
        disp('First expression is True')
    end
end
