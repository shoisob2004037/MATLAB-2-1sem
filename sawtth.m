clc;
clear all;
close all;
x=0:0.1:20;
y=sawtooth(x);
subplot(2,1,1)
plot(x,y,'g')
title('Sawtooth Continous Curve')
xlabel('Time')
ylabel('Amplitude')
axis([0 20 -2 2])
subplot(2,1,2)
stem(x,y,'r')
xlabel('Time')
ylabel('Amplitude')
title('Sawtooth Discrete Curve')
axis([0 20 -2 2])

