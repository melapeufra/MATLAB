function [un,vn] = fernn(n)
N = 10000;
n = 50;
P = zeros(N,2);
for j = 1:N
	
	u = rand(1);
	v = rand(1);
	
	for i = 1:n
		
		r = rand(1);
				
		if r < 0.01
			
			un = 0;
			vn = 0.16*v;
			u = un;
			v = vn;
			
		elseif r < 0.08
			
			un = 0.2*u-0.26*v;
			vn = 0.23*u+0.22*v+1.6;
			u = un;
			v = vn;
			
		elseif r < 0.15
			
			un = -0.15*u+0.28*v;
			vn = 0.26*u+0.24*v+0.44;
			u = un;
			v = vn;
			
		else
			
			un = 0.85*u+0.04*v;
			vn = -0.04*u+0.85*v+1.6;
			u = un;
			v = vn;
			
		end
				
    end
	
	P(j,1) = u;
	P(j,2) = v;
	
end

plot(P(:,1),P(:,2),'g.')
end
