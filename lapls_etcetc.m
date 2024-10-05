clc;
close all;
clear all;
syms t ;
F=laplace(sin(t))
F=laplace(cos(t))
F=laplace(sinh(t))
F=laplace(cosh(t))
F=laplace(sin(sqrt(t)))
ex2=(sin(t)-cos(t)).^2;
F=laplace(ex2)

ex3= 4*exp(3*t)+6*t.^3-3*sin(4*t)+2*cos(2*t);
F=laplace(ex3)
syms f(t) s
Df = diff(-3*sin(3*t));
F = laplace(Df)

syms x
f = cos(x);
Fint = int(f,x,[0 10]);
F=laplace(Fint)

ex= x.^2+2*x-6;
F=laplace(ex)