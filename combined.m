clc;
clear all;
close all;
x=-10:0.1:10;
y=sin(x);
%Sine Wave
subplot(5,2,1)
plot(x,y,'r')
title('Sine Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(5,2,2)
stem(x,y,'r')
title('Sine Discrete Curve')
xlabel('Time')
ylabel('Amplitude')
%Square Wave
a=-10:0.1:10;
b=square(a);
subplot(5,2,3)
plot(a,b,'g')
title('Square Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(5,2,4)
stem(a,b,'g')
title('Square Discrete Curve')
xlabel('Time')
ylabel('Amplitude')
%Sawtooth Wave
c=0:0.1:20;
d=sawtooth(c);
subplot(5,2,5)
plot(c,d,'m')
title('Sawtooth Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(5,2,6)
stem(c,d,'m')
xlabel('Time')
ylabel('Amplitude')
title('Sawtooth Discrete Curve')
%Triangular Wave
t=0:0.1:20;
m=sawtooth(2*pi*0.5*t,0.5);
subplot(5,2,7)
plot(t,m,'b')
title('Triangular Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(5,2,8)
stem(t,m,'b')
xlabel('Time')
ylabel('Amplitude')
title('Triangular Discrete Curve')
%Sinc Wave
f=-10:0.1:10;
g=sinc(f);
subplot(5,2,9)
plot(f,g,'k')
title('Sinc Continous Curve')
xlabel('Time')
ylabel('Amplitude')
subplot(5,2,10)
stem(f,g,'k')
title('Sinc Curve')
xlabel('Time')
ylabel('Amplitude')
title('Sinc Discrete Curve')
