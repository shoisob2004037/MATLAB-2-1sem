clc;
clear all;
close all;
x = linspace(-10, 10, 100); 
a = 3; 
b = 3;
c = 2; 
y = a*x.^2 + b*x + c; 
plot(x, y,'g'); 
