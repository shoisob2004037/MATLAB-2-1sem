clc;
clear all;
Am=1;Ac=1;
fs=6500;
fm=23; fc=58;
t=((0:0.1*fs)/fs);
m=(Am*cos(2*pi*fm*t));
subplot(4,1,1)
plot(t,m,'r');
title('Messsage Signal');
xlabel('time (t)');
ylabel('Amplitude');
grid on;
c=(Ac*cos(2*pi*fc*t));
subplot(4,1,2);
plot(t,c,'k');
title('Carrier Signal');
xlabel('time (t)');
ylabel('Amplitude');
grid on;
s=((Am*Ac)/2).*cos(2*pi*(fc-fm)*t);
subplot(4, 1, 3); plot(t,s,'m');
xlabel('time(t)')
ylabel('Amplitude')
title('SSBSC modulated Signal'); grid on;
d=((Am*Ac*Ac)/4).*cos(2*pi*(fm)*t);
subplot(4, 1, 4);
plot(t,d,'r');
xlabel('time(t)');
ylabel('Amplitude');
title('SSBSC demodulated Signal');