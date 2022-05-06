function thirdExpr(n,k)
n = 7;
k = 1;
    if binomial(n+1,k+1) == binomial(n,k)+ binomial(n,k+1)
        disp('Third expression True')
    end
end