% Kęstutis
% Liutkus
% EDIf-25/1
% 2026-10-05
% 4 var

%% Pagrindine dalis

[x, y] = meshgrid(-2:0.05:2);   
s = abs(x + y);                     
f = sin(s/20) .* exp(-s);             

figure(1)
h = surf(x, y, f);                    
colormap(jet)                         
shading interp
rotate(h, [0 0 1], 30)                
axis tight
title('f(x,y) = sin(|x+y|/20) \cdot e^{-|x+y|}')
xlabel('x'), ylabel('y'), zlabel('f(x,y)')
grid on

%%

[r, th] = meshgrid(0:0.05:1, linspace(0, 2*pi, 60));  
x = r .* cos(th);                     
y = r .* sin(th);
f = 1 - 2*x.^2 - 3*y.^2;              

figure(2)
h = surf(x, y, f);
colormap summer                      
shading interp
rotate(h, [0 0 1], 78)                
axis tight
title('f(x,y) = 1 - 2x^2 - 3y^2,  x = r cos\theta,  y = r sin\theta')
xlabel('x'), ylabel('y'), zlabel('f(x,y)')
grid on

%% Papildoma dalis

[x, y] = meshgrid(-1:0.05:1);
z = 1 - (x.^2 + y.^2);

figure(3)
surf(x, y, z, 'Facecolor', 'r', 'EdgeColor','none')
camlight left
lighting gouraud
title('z(x,y) = 1 - (x^2 + y^2)')
xlabel('x'), ylabel('y'), zlabel('z(x,y)')
axis tight
grid on