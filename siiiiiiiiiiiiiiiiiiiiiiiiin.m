clc;
clear all;
close all;
x=0:0.1:10;
y=sin(x)
subplot(2,1,1)
plot(x,y,'g')
title('Sin Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(2,1,2)
stem(x,y,'r')
title('Sin Curve')
xlabel('Time')
ylabel('Amplitude')
title('Sin Discrete Curve')
