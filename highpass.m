clc; 
clear all; 
close all; 
fs=100; 
T=1/fs; 
t=0:T:1-T; 
f=2; 
s=cos(2.*pi.*f.*t); 
noise=0.5*randn(size(t)); 
figure(1) 
subplot(3,1,1); 
plot(s,'g','LineWidth',2); 
title('Sine Wave'); 
subplot(3,1,2) 
plot(noise,'y','LineWidth',2); 
title('Noise'); 
x=s+noise; 
subplot(3,1,3); 
plot(x,'b','LineWidth',2); 
title('SineWave+ Noise'); 
figure(2) 
subplot(4,1,1); 
plot(s,'g','LineWidth',2); 
title('Sine Wave'); 
d1=designfilt('highpassfir','FilterOrder',20,'CutoffFrequency',3,'SampleRate',fs); 
y=filter(d1,x); 
subplot(4,1,2) 
plot(y,'r','LineWidth',2); 
title('Filterd Wave'); 
y1=filtfilt(d1,x); 
subplot(4,1,3); 
plot(y1,'k','LineWidth',2); 
title('Zero Phase filtering wave'); 
subplot(4,1,4) 
plot(s,'g','LineWidth',2); 
hold on
plot(y,'r','LineWidth',2); 
hold on
plot(y1,'k','LineWidth',2); 
hold on
title('All Signal in One Plot'); 
d1=designfilt('highpassfir','FilterOrder',22,'CutoffFrequency',3,'SampleRate',fs); 
y=filter(d1,x); 
y1=filtfilt(d1,x); 
d2=designfilt('highpassfir','FilterOrder',15,'CutoffFrequency',3,'SampleRate',fs); 
y=filter(d2,x); 
y2=filtfilt(d2,x); 
d3=designfilt('highpassfir','FilterOrder',28,'CutoffFrequency',3,'SampleRate',fs); 
y=filter(d3,x); 
y3=filtfilt(d3,x); 
figure(3) 
subplot(4,1,1); 
plot(y1,'k','LineWidth',2); 
title('First Filtered Wave'); 
subplot(4,1,2) 
plot(y2,'g','LineWidth',2); 
title('Second Filtered Wave'); 
subplot(4,1,3) 
plot(y3,'r','LineWidth',2); 
title('Third Filtered Wave'); 
subplot(4,1,4) 
plot(y1,'k','LineWidth',2); 
hold on
plot(y2,'g','LineWidth',2); 
hold on
plot(y3,'r','LineWidth',2); 
title('All Filtered Wave in One Plot'); 