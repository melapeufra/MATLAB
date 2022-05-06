E=[];
NMAX=30;
for x = -2:0.01:2
    for y = -2:0.01:2
        z =0 + 1i*0;
        v =[];
        for j = 0:NMAX
            z=z ^2 + (x+1i*y);
            if abs(z)>2
                break;
            end
        end
        v = [v,j] ; 
    end
E= [E;v];
end
figure(1)
imagesc(E)
colorbar
%%  Modifier votre code pour générer d’autres formes : ENSEMBLE DE JULIA
E=[];
%c =0.3+i*0.5;
%c = 0.285+i*0.01;
%c = -1.417022285618+i*0.0099534
c=-1.038088+i*1.09754633
for x=-2:0.01:2
   v=[];
    for y=-2:0.01:2
        z=x+1i*y;
        for bcl=0:NMAX
            z=z^2+c;
            if abs(z)>2
                break;
            end
        end
        v=[v, bcl];
    end
    E=[E;v];
end
figure(2)
imagesc(E);
