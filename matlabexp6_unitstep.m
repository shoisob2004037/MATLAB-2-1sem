clc;
clear all;
close all;
l=-10:10;
z=[zeros(1,10) ones(1,11)];
subplot(2,1,1)
plot(l,z,'b')
xlabel('l')
ylabel('u(l)')
title('Unit Step Continous')
axis([-12 12 -1 2])
subplot(2,1,2)
stem(l,z,'b')
xlabel('l')
ylabel('u(l)')
title('Unit Step Discrete')
axis([-12 12 -1 2])