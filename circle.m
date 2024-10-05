clc;
clear all;
r=5;
t=0:0.01:2*pi;
x=(r*cos(t));
y=(r*sin(t));
plot(x,y,'r');
title('Circle');