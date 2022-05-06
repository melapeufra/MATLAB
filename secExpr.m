function thirdExpr(n,k)
    if binomial(n+1,k+1) == binomial(n,k)+ binomial(n,k+1)
        disp('Third expression is True')
    end
end