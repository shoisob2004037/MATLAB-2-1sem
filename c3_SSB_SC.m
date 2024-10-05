clc;
close all;
clear all;
fs=8000;
fm=50;
fc=1500;
Ac=2;
Am=2;
t=(0:0.1*fs)/fs;
m=Am*cos(2*pi*fm*t);
mh=imag(hilbert(m));
s=Ac/2*((m.*cos(2*pi*fc*t))-(mh.*cos(2*pi*fc*t)));
plot(t,s)
s1=s.*m;
[b,a]=butter(3,.01,"low");
dms= filter(b,a,s1);
subplot(3,1,1)
plot(t,m);
title('Message Signal');
subplot(3,1,2)
plot(t,s);
title('Modulated Signal Signal');
subplot(3,1,3)
plot(t,dms);
title('Demlodulated Signal');