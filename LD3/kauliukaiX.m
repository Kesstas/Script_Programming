function kauliukaiX(X)
%KAULIUKAIX Imituoja X losimo kauliuku metima.
%   kauliukaiX(X) "meta" X kauliuku ir komandiniame lange parodo
%   iskritusius skaicius (is aibes 1..6) kaip vektoriu-eilute.
help

if nargin < 1
    error('Nurodykite kauliuku kieki X, pvz.: kauliukaiX(5)');
end

if X < 1 || X ~= round(X)
    error('X turi buti sveikas teigiamas skaicius.');
end

metimai = randi(6, 1, X);

disp(['Iskrite skaiciai (' num2str(X) ' kauliukai):']);
disp(metimai);
end