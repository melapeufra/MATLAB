%% PARTIE 3 CALCUL SYMBOLIQUE

%1 - Déclarer l’expression de f(x, y), en utilisant la fonction g,avec : f(x, y) = g(x) − g(y)

syms f(x,y) g(x) g(y)

g(x) = cos(x-pi/4)^2 - sin(x-pi/4)^2;
g(y) = cos(y-pi/4)^2 - sin(y-pi/4)^2;

f(x,y) = g(x) - g(y);

%2 - Vérifier les égalités suivantes : f(x, y) = 2 × (cos x sin x − sin y cos y)
%                                              = sin(2x) − sin(2y)

syms f1(x,y) f2(x,y)

f1(x,y) = 2*(cos(x)*sin(x) - sin(y)*cos(y));
f2(x,y) = sin(2*x) - sin(2*y);

if simplify(f1(x,y))==f2(x,y)
    disp("2*(cos(x)*sin(x) - sin(y)*cos(y)) = sin(2x) − sin(2y)");
end

%3 - Dérivés partielles
diff(f(x,y),y,2)
diff(f(x,y),x,2)
diff(f(x,y),2)

%4 - Tracer la surface z = f(x, y)
figure(1)
ezplot(f1(x,y))