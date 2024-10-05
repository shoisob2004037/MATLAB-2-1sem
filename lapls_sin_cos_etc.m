sym  t;
F=laplace(sin(t))
F=laplace(cos(t))
F=laplace(sinh(t))
F=laplace(cosh(t))
F=laplace(sin(sqrt(t)))
x1=((sin(t)-cos(t).^2);
F=laplace(x1)
x2=4*exp(3*t)+6*(t.^3)-3*(sin(4*t))+2*(cos(2*t));
F=laplace(x2)
sym f(t) s
Df=diff(-3*(sin(3*t)));
F=laplace(Df)
sym x
f=cos(x)
Fint=int(f,x,[0,10]);
F=laplace(Fint);
ex=x.^2+2*x-6;
F=laplace(ex)