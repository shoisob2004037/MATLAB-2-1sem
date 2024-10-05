clc;
clear all;
close all;
fs=2000;
N=1206;
t=[0:N-1]/fs; 
x=sin(2*pi*100*t);
subplot(2,1,1);
plot(t,x,'r');
axis([0 0.05 -1 1]);
grid;
xlabel('Time');
ylabel('Amplitude');
title('Input signal');
x1=fft(x);
k=0:N-1;
Xmag=abs(x1);
subplot(2,2,3);
plot(k,Xmag,'m')
grid;
xlabel('Time');
ylabel('Amplitude')
title('Magnitude of the fourier transform signal');
Xphase=angle(x1)*(180/pi);
subplot(2,2,4);
plot(k,Xphase,'k');
xlabel('Time');
ylabel('Angle')
title('phase of the fourier transform signal')
