clc;
clear all;
close all;
%laplace transform of symbolic expression
syms x y
f = 1/sqrt(x);
F = laplace(f)
%Specify Independent Variable and Transformation Variable
syms a t y
f = exp(-a*t);
F = laplace(f)
%Relation Between Laplace Transform of Function and Its Derivative
syms f(t) s
Df = diff(f(t),t);
F = laplace(Df,t,s)
%dirac delta function
syms t s
syms a positive
F = laplace(dirac(t-a),t,s)
%heaviside function
F = laplace(heaviside(t-a),t,s)
%laplace transform of array inputs
syms a b c d w x y z
M = [exp(x) 1; sin(y) 1i*z];
vars = [w x; y z];
transVars = [a b; c d];
F = laplace(M,vars,transVars)
%symbolic function
syms f1(x) f2(x) a b
f1(x) = exp(x);
f2(x) = x;
F = laplace([f1 f2],x,[a b])
%if LT is not found
syms f(t) s
f(t) = 1/t;
F(s) = laplace(f,t,s)
syms  t;
F=laplace(sin(t))
F=laplace(cos(t))
F=laplace(sinh(t))
F=laplace(cosh(t))