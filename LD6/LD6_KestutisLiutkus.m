% Kęstutis
% Liutkus
% EDIf-25/1
% 2026-10-12
% 4 var
clear; clc; close all;

%% Pagrindine dalis
% 1

help kauliukaiX
kauliukaiX(5)

%% 2

clc;
clear global;          

global x y_kv y_puse   

x = 0:0.1:20;          

kvadratu               
puse                   

plot(x, y_puse, '-.bo');
grid on;
xlabel('x');
ylabel('y');
title('y = x^2 \cdot 1/2');

whos global

%% Papildoma dalis

help grafsincos

x = 0:0.1:2*pi;

grafsincos(x)         

SC = grafsincos(x);   
size(SC)
SC(:, 1:10)

[s, c] = grafsincos(x);
s(1:5)
c(1:5)