clc;
clear all;
close all;
%Rectangular pulse 
syms a b t
f = rectangularPulse(a,b,t);
f_FT = fourier(f)
% Unit impulse (Dirac delta)
f = dirac(t);
f_FT = fourier(f)
% Absolute value 
f = a*abs(t);
f_FT = fourier(f)
% Step (Heaviside) 
f = heaviside(t);
f_FT = fourier(f)
% Constant
f = a;
f_FT = fourier(a)
% Cosine
f = a*cos(b*t);
f_FT = fourier(f)
% Sine
f = a*sin(b*t);
f_FT = fourier(f)
% Sing
f = sign(t);
f_FT = fourier(f)
% Triangle
syms c
f = triangularPulse(a,b,c,t);
f_FT = fourier(f)
% Right-sided exponential
f = exp(-t*abs(a))*heaviside(t);
f_FT = fourier(f)
assume(a > 0)
f_FT_condition = fourier(f)
assume(a,'clear')
% Double-sided exponentia
assume(a > 0)
f = exp(-a*t^2);
f_FT = fourier(f)
assume(a,'clear')