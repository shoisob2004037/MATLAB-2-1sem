clc;
clear all;
close all;
n=-10:10;
u=[zeros(1,10) 1 zeros(1,10)];
subplot(2,1,1)
plot(n,u,'m')
xlabel('n')
ylabel('u(n)')
title('Continuous Impulse')
axis([-12 12 -1 2])
subplot(2,1,2)
stem(n,u,'m')
xlabel('n')
ylabel('u(n)')
title('Discrete Impulse')
axis([-12 12 -1 2])
