% Kęstutis
% Liutkus
% EDIf-25/1
% 2026-09-21
% 4 var
%% Pagrndine dalis

a = (-pi:0.7:2*pi)';
b = cos(a);
c = a .^ b;

c_eil = c.';
disp('1 d) Rezultatas (vektorius-eilute):');
disp(c_eil);

%%
X = [exp(5),  exp(-1i/exp(1)),  log(1);
    log(pi), -2, -sin(pi)];

X = [X; X(2,1)^2, X(1,3), X(2,3)^2];
disp('2 b) Gauta matrica X:');
disp(X);

detX = det(X);
disp('2 c) Matricos determinantas:');
disp(detX);

%%
A     = 7;      
f     = 4;      
sigma = 2;      
U1    = 4.5;    
U2    = 2.5;
t     = 0:0.005:1;


s  = A * sin(2*pi*f*t);
n  = sigma * randn(size(t));
sn = s + n;  


virs_U1 = sn(sn > U1);


sn_filt = sn;
sn_filt(abs(sn_filt) < U2) = 0;


dydis_nefilt = size(sn);


dydis_a = length(virs_U1);


max_filt = max(sn_filt);
min_filt = min(sn_filt);


fprintf('3 a) Reiksmiu, virsijanciu %.1f V, kiekis: %d\n', U1, dydis_a);
disp('3 a) Atrinktos reiksmes:');
disp(virs_U1);
fprintf('3 c) Nefiltruoto signalo dydis: %d x %d (elementu: %d)\n', ...
    dydis_nefilt(1), dydis_nefilt(2), length(sn));
fprintf('3 d) Atrinktu reiksmiu dydis: %d\n', dydis_a);
fprintf('3 e) Filtruoto signalo max = %.4f V, min = %.4f V\n', max_filt, min_filt);

%% Papildoma dalis

A = input('Iveskite vektoriu A, pvz. [3 5 7 9]: ');

A = A(:).';

B = repmat(A, 4, 1);
B = B(:).';

disp('vektorius B yra:');
disp(B);