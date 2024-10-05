clc;
clear all;
close all;
am = 1;
ac = 1;
fm1 = 5;
fc1 = 50;
fm2 = 2*fm1;
fc2 = 2*fc1;
t = 1000;
t1 = linspace(0, t, 1000) ;
m1 = am.*cos(2*pi*fm1*t1);
m2 = am.*cos(2*pi*fm2*t1);
c1 = ac.*cos(2*pi*fc1*t1);
c2 = ac.*cos(2*pi*fc2*t1);
r1 = m1.*c1;
r2 = m2.*c2;
x= r1+r2;
y= r1.*r2;
subplot (4,2, 1) ;
plot (t1, m1,'b');
title('Message Signal 1')
subplot (4,2,2);
plot(t1,m2,'b');
title('Message Signal 2')
subplot (4,2,3);
plot(t1, c1,'g');
title('Carrier Signal 1')
subplot (4, 2,4);
plot (t1, c2, 'r');
title('Carrier Signal 2')
subplot (4,2,5);
plot (t1, r1, 'm');
title('Multiplexing Signal 1')
subplot (4, 2,6);
plot (t1, r2, 'g');
title('Multiplexing Signal 2')
subplot (4,2,7);
plot (t1,x, 'r');
title('Sum of two multiplexing signal')
subplot (4,2,8);
plot (t1,y, 'r');
title('Multiplexing of two multiplexing signal')