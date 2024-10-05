clc;
clear all;
close all;
n=-10:10;
z=[zeros(1,11) 1 2 3 4 5 6 7 8 9 10];
subplot(2,1,1)
plot(n,z,'r')
xlabel('n')
ylabel('u(n)')
title('Ramp Continous')
axis([-10 10 -2 10])
l=-10:10;
z=[0 0 0 0 0 0 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10];
subplot(2,1,2)
stem(l,z,'r')
xlabel('l')
ylabel('u(l)')
title('Ramp Discrete')
axis([-10 10 -2 10])


