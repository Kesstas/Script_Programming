% Kęstutis
% Liutkus
% EDIf-25/1
% 2026-10-12
% 4 var
clear; clc; close all;

%% Pagrindine dalis
% 1
%a)

x_param.pradzia  = 0;
x_param.pabaiga  = 2;
x_param.zingsnis = 0.01;
x_param.zyme     = 'x';

x = x_param.pradzia : x_param.zingsnis : x_param.pabaiga;

signalas.f = cos(sin(2*pi*x));               
signalas.x_parametrai = x_param;                        
signalas.pavadinimas = 'f(x) = cos(sin(2\pi x))';       

disp('1 a) Sukurta struktūra:');
disp(signalas);

%b)
xp = signalas.x_parametrai;
x_grafikui = xp.pradzia : xp.zingsnis : xp.pabaiga;

figure(1);
plot(x_grafikui, signalas.f, 'LineWidth', 1.5);
grid on;
xlim([xp.pradzia xp.pabaiga]);
title(signalas.pavadinimas);
xlabel(xp.zyme);
ylabel('f(x)');

%% 2
while true
    m = input('Įveskite m: ');
    n = input('Įveskite n: ');

    if m == n
        disp('m ir n vienodi - programa baigia darbą.');
        break;
    end

    didesnis = max(m, n);
    mazesnis = min(m, n);

    if mazesnis <= 0
        disp('Mažesnis skaičius turi būti teigiamas, įveskite iš naujo.');
        continue;
    end

    
    while didesnis - mazesnis > 0
        didesnis = didesnis - mazesnis;
    end

    disp(['Mažiausia teigiama reikšmė: ', num2str(didesnis)]);
end

%% Papildoma dalis
clear; clc; close all;

sk1 = [];        
sk2 = [];        

while true
    a = round(rand*3);       
    b = round(rand*5);       

    sk1(end+1) = a;          
    sk2(end+1) = b;

    if a == b                
        break;
    end
end

fprintf('Ciklas nutrauktas po %d iteracijų (abu skaičiai = %d)\n', ...
        length(sk1), a);

iter = 1:length(sk1);

figure(1);
plot(iter, sk1, 'b-o', 'LineWidth', 1.5);
hold on;
plot(iter, sk2, 'r--s', 'LineWidth', 1.5);
hold off;
grid on;
xlim([0.5, length(sk1) + 0.5]);
ylim([-0.5, 5.5]);
title('Sugeneruotų atsitiktinių skaičių kitimas');
xlabel('Iteracijos numeris');
ylabel('Sugeneruota reikšmė');
legend('round(rand*3)', 'round(rand*5)', 'Location', 'best');