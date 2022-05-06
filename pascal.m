% Let's draw Spider-Man!
clear; close all; clc;
%% Draw the outline
theta = 0:1/180:2*pi;
x_outline = 10*cos(theta);
y_outline = 10*sin(theta);

figure
hold on
fill(x_outline,y_outline,'r') 
plot(x_outline,y_outline,'r-') 
%% Draw the web (arcs)
    %Centers of arcs
    n = 10;
    r_center_arc = [1.6;4.8;8;11.4];
    theta_arc = 2*pi/(2*n):2*pi/n:2*pi/(2*n)*(2*n-1);
    x_center_arc = r_center_arc.*cos(theta_arc);
    y_center_arc = r_center_arc.*sin(theta_arc);
    %Angles of arcs
    r_arc = [0.5 1.55 2.53 3.6]; d = pi/180*32; angle_arc = zeros(12,180);
    for i = 1:numel(theta_arc)
        angle_arc(i,:) = linspace(theta_arc(i)+pi/2+d,theta_arc(i)+3*pi/2-d,180);
    end
    %Draw arcs
    for r = 1:numel(r_center_arc)
        for t = 1:numel(theta_arc)
            x_arc = x_center_arc(r,t)*ones(1,size(angle_arc,2))+r_arc(r)*cos(angle_arc(t,:));
            y_arc = y_center_arc(r,t)*ones(1,size(angle_arc,2))+r_arc(r)*sin(angle_arc(t,:));
            plot(x_arc,y_arc,'k-','linewidth',2)
        end
    end

%% Draw the web (straight lines) 
   theta_line = theta_arc - 2*pi/(2*n);
   
   for i = 1:numel(theta_line)/2 
       lineedge_x1 = 10*cos(theta_line(i));
       lineedge_y1 = 10*sin(theta_line(i));
       lineedge_x2 = -lineedge_x1;
       lineedge_y2 = -lineedge_y1;
       plot([lineedge_x1 lineedge_x2],[lineedge_y1 lineedge_y2],'k-','linewidth',2)
   end
   
%% Draw the eyes
   center_eye = [4;2]; r_eye = [4.5;3.5]; 
   x_eye = ones(2,180); y_eye = ones(2,180);
   
   for i = 1:2
       angle_eye = linspace(pi+pi/180*(30+10*i),2*pi+pi/180*(80-20*i),180);
       x_eye(i,:) = center_eye(1)*ones(1,numel(angle_eye))+r_eye(i)*cos(angle_eye);
       y_eye(i,:) = center_eye(2)*ones(1,numel(angle_eye))+r_eye(i)*sin(angle_eye);
   end
   fill(x_eye(1,:),y_eye(1,:),'k')
   fill(-x_eye(1,:),y_eye(1,:),'k')
   fill(x_eye(2,:),y_eye(2,:),'w')
   fill(-x_eye(2,:),y_eye(2,:),'w')
   
%% Figure settings
pbaspect([8 6 5])
font = 'Trebuchet MS'; fontsize = 20;
set(gca,'FontName',font,'Fontsize',fontsize)
box on
ax.LineWidth = 50;
title('Spider-Man')