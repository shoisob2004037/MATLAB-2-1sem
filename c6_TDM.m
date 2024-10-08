clc;
clear all;
close all;
x=0:0.5:4*pi;
sig1=8*sin(x);
sig2=8*cos(x);
subplot(2,2,1);
plot(sig1,'r');
title('Sine Signal');
ylabel('Amplitude');
xlabel('Time');
subplot(2,2,2);
plot(sig2,'b');
title('Cosine Signal');
ylabel('Amplitude');
xlabel('Time');
subplot(2,2,3);
stem(sig1,'g');
title('Sampled Sinusoidal Signal');
ylabel('Amplitude');
xlabel('Time');
subplot(2,2,4);
stem(sig2,'m');
title('Sampled Cosine Signal');
ylabel('Amplitude');
xlabel('Time');
l1=length(sig1);
l2=length(sig2);
for i=1:l1
 sig(1,i)=sig1(i);
 sig(2,i)=sig2(i);
end
tdmsig=reshape(sig,1,2*l1);
figure;
stem(tdmsig);
title('TDM Signal');
ylabel('Amplitude');
xlabel('Time');
demux=reshape(tdmsig,2,l1);
for i=1:l1
 sig3(i)=demux(1,i);
 sig4(i)=demux(2,i);
end
figure;
subplot(2,1,1);
plot(sig3,'r');
title('Recovered Sine Signal');
ylabel('Amplitude');
xlabel('Time');
subplot(2,1,2);
plot(sig4,'b');
title('Recovered Cosine Signal');
ylabel('Amplitude');
xlabel('Time');