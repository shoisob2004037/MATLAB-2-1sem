clc;
clear all;
close all;
t=0:0.1:20;
y=sawtooth(2*pi*0.5*t,0.5);
subplot(2,1,1)
plot(t,y,'g')
title('Triangular Continous Curve')
xlabel('Time')
ylabel('Amplitude')
axis([0 20 -2 2])
subplot(2,1,2)
stem(t,y,'r')
xlabel('Time')
ylabel('Amplitude')
title('Triangular Discrete Curve')
axis([0 20 -2 2])

