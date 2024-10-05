clc;
clear;
close all;
t= 0:.3:10;
x=sin(t);
y=cos(t);
z=exp(t);
subplot(4,3,1)
a = [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10];
b = [0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1];
stem(a,b,'r')
title('Unit Step Signal using Array')
subplot(4,3,2)
a1 = -10:10;
b1 = [zeros(1,10),ones(1,11)];
stem(a1,b1,'b')
title('Unit Step')
subplot(4,3,3)
a2 = -10:10;
b2 = (a2>=0);
stem(a2,b2,'m')
title('Unit Step Signal using Condition')
x1= [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10]
y1= [0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0]
subplot(4,3,4)
stem(x1,y1,'k')
title('Unit Impulse using array')
x2= -10:10
y2= [zeros(1,10),1,zeros(1,10)]
subplot(4,3,5)
stem(x2,y2,'r')
title('Unit Impulse Signal')
x3= -10:10
y3 = (x3==0)
subplot(4,3,6)
stem(x3,y3,'b')
title('Unit Impulse Signal using Condition')
c= -2:10;
d= c.*(c>=0)
subplot(4,3,7)
stem(c,d,'r')
title('Ramp Signal')
subplot(4,3,8)
plot(t,x)
title('Continuous Sine wave')
subplot(4,3,9)
stem(t,x,'g')
title('Discrete Sine wave')
subplot(4,3,10)
plot(t,y)
title('Continuous Cos wave')
subplot(4,3,11)
stem(t,y,'y')
title('Discrete Cos wave')
subplot(4,3,12)
stem(t,z,'g')
title('Exponential wave')