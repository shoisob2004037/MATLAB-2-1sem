clc;
clear all;
close all;
x=-10:0.2:10;
y=sinc(x);
subplot(2,1,1)
plot(x,y,'g')
title('Sinc Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(2,1,2)
stem(x,y,'r')
title('Sin Curve')
xlabel('Time')
ylabel('Amplitude')
title('Sinc Discrete Curve')
%axis([-10 10 -1 1])
