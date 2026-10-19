function varargout = grafsincos(x)
%GRAFSINCOS Apskaiciuoja vektoriaus-eilutes sin ir cos.
%   Funkcijos veikimas priklauso nuo to, kiek isejimo kintamuju paprasoma:
%
%   grafsincos(x)          - nieko negrazina, nubraizo sin(x) ir cos(x) grafikus
%   SC = grafsincos(x)     - grazina matrica [sin(x); cos(x)] (2 eilutes)
%   [S, C] = grafsincos(x) - grazina sin(x) ir cos(x) atskirai
%
%   Ieities kintamasis:
%       x - vektorius-eilute, pvz. x = 0:0.1:2*pi
%
%   Pavyzdys:
%       x = 0:0.1:2*pi;
%       grafsincos(x)
%       [s, c] = grafsincos(x);

if nargin < 1
    error('Paduokite vektoriu-eilute, pvz.: grafsincos(0:0.1:2*pi)');
end
if ~isrow(x)
    error('x turi buti vektorius-eilute.');
end

s = sin(x);
c = cos(x);


switch nargout
    case 0     
        plot(x, s, 'b-', x, c, 'r--');
        grid on;
        xlabel('x');
        ylabel('y');
        legend('sin(x)', 'cos(x)');
        title('sin(x) ir cos(x) grafikai');
    case 1     
        varargout{1} = [s; c];
    case 2     
        varargout{1} = s;
        varargout{2} = c;
    otherwise
        error('Funkcija grazina daugiausiai 2 kintamuosius.');
end
end