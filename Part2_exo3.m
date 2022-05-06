%% EXERCICE 3
n = 7;
k = 1;
coef = binomial(n,k);
firstExpr(n);
secExpr(n,2,3);
thirdExpr(n,k);
pascal(7);

%1 -  fonction qui permet d’évaluer le coefficient binomial pour n et k donnée 
function coef = binomial(n,k)
    coef = factorial(n)/(factorial(k)*factorial(n-k));
end

%2 - Vérifier la première égalité
function firstExpr(n)
    sum = 0;
    for ka = 0:n
        sum = binomial(n,ka)+sum;
    end    
    if sum == 2^n
        disp('First expression True')
    end
end

%2 - Vérifier la deuxième égalité
function secExpr(n,x,y)
    sum = 0;
    for ka = 0:n
        sum = (binomial(n,ka)* x^(n-ka)*y^ka) +sum;
    end
    if sum == (x+y)^n
        disp('Second expression True')
    end
end

%2 - Vérifier la troisième égalité
function thirdExpr(n,k)
    if binomial(n+1,k+1) == binomial(n,k)+ binomial(n,k+1)
        disp('Third expression True')
    end
end

%3 - Triangle de Pascal

function pscl = triangle(n)
    for k = 0:n
        pscl(k+1)= binomial(n,k);
    end
end
function pascal(m)
    disp("Triangle de Pascal")
    for m = 1:m
        disp(triangle(m))
    end
end