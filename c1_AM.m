clc;
close all;
fs=8000;
fm=50;
fc=1500;
Am=2;
Ac=2;
t=[0:0.1*fs]/fs;
m=Am*cos(2*pi*fm*t); % Massage Signal:
c=Ac*cos(2*pi*fc*t); % Carriar Signal:
subplot(8,1,1)
plot(t,m,'r')
title('Massage Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(8,1,2)
plot(t,c,'r')
title('Carrier Signal')
xlabel('Time')
ylabel('Amplitude')
ums=Ac*(1+(.3*Am)*cos(2*pi*fm*t)).*cos(2*pi*fc*t); % Under Modulated Signal:
subplot(8,1,3)
plot(t,ums,'b')
title('Under Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
pms=Ac*(1+(.5*Am)*cos(2*pi*fm*t)).*cos(2*pi*fc*t); % Perfect Modulated Signal:
subplot(8,1,4)
plot(t,pms,'r')
title('Perfect Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
oms=Ac*(1+(1*Am)*cos(2*pi*fm*t)).*cos(2*pi*fc*t); % Over Modulated Signal:
subplot(8,1,5)
plot(t,oms,'m')
title('Over Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
[b,a]=butter(1,0.01,'low');
% Demodulated Signal from Under Modulated Signal:
ums1= ums.*c;
dums=filter(b,a,ums1);
subplot(8,1,6)
plot(t,dums)
title('Demodulated Signal from Under Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
% Demodulated Signal from perfect Modulated Signal:
pms1= pms.*c;
dpms=filter(b,a,pms1);
subplot(8,1,7)
plot(t,dpms)
title('Demodulated Signal from perfect Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
% Demodulated Signal from over Modulated Signal:
oms1= oms.*c;
doms=filter(b,a,oms1);
subplot(8,1,8)
plot(t,doms)
title('Demodulated Signal from over Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
