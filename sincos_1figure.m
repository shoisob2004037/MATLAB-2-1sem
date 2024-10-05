clc;
clear all;
close all;
t=0:0.01:10;
x=sin(t)
subplot(3,1,1)
plot(t,x,'r');
title('Sine graph')
t=0:0.01:10;
y=cos(t)
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2)
plot(t,y,'b');
title('Cosine graph')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,3)
plot(t,x,'m');
hold on;
plot(t,y,'g');
title('Sine and Cosine graph')
xlabel('Time')
ylabel('Amplitude')
