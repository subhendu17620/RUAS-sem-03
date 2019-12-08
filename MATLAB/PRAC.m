x=[0,pi/6,(2*pi)/6,(3*pi)/6,(4*pi)/6,(5*pi)/6];
y=[0 9.2 14.4 17.8 17.3 11.7];
h=20;
syms t
T=(6*pi)/6;
w=2*pi/T;
a0=2*mean(y);
HS=a0/2;
for i=1:h
    a(i)=2*mean(y.*cos(i*w*x));
    b(i)=2*mean(y.*mean(i*w*x));
    HS=HS+a(i)*cos(i*w*t)+b(i)+sin(i*w*t);
end
HS=vpa(HS,3);
disp(HS);
t=linspace(min(x),max(x),100);
y1=eval(HS);
plot(x,y,'*',t,y1,'r');
