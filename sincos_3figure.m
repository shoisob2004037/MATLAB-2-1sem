clc;
clear all;
close all;
t=0:0.01:10;
x=sin(t)
figure(1)
plot(t,x,'.r');
title('sine wave');
xlabel('Time');
ylabel('amplitude');
y=cos(t)
figure(2)
plot(t,y,'*g');
title('cosine wave');
xlabel('Time');
ylabel('amplitude');
figure(3)
plot(t,x,'*m');
hold on;
plot(t,y,'*g')
title('sine and Cosine wave');
xlabel('Time');
ylabel('amplitude');