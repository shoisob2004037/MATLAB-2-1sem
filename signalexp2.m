clc;
clear all;
close all;
n1=0:1:3;
x=[1 2 3 4];
h=[3 5 9 7];
z=conv(x,h);
n2=0:length(z)-1;
subplot(3,1,1)
stem(n1,x,'b');
xlabel('Time')
ylabel('Amplitude')
title('Input Signal');
subplot(3,1,2)
stem(n1,h,'r')
xlabel('Time')
ylabel('Amplitude')
title('Impulse Response Signal');
subplot(3,1,3)
stem(n2,z,'g')
xlabel('Time')
ylabel('Amplitude')
title('Convolution Sum Signal');
