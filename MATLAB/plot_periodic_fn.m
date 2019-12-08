%f(x)={1.5x 0<=x<2
%	{5-x  2<=x<5	
%	{0 5<=x<6
%f(x+6)=f(x)
%plot in the interval [-6,12]

% f=@(x) (1.5*x).*(0<=x & x<2).*(2<=x & x<5)+0.*(5<=x&x<6)
% x=linspace(0,6,50);
% y=f(x)
% I=[-6,12]
% ry=repmat(y,1,diff(I)/6);
% rx=linspace(I(1),I(2),length(ry));
% plot(rx,ry)


% f=@(x) x.^2;
% x=linspace(-2,2,100);
% y=f(x);
% I=[-6,6];
% ry=repmat(y,1,diff(I)/6);
% rx=linspace(I(1),I(2),length(ry));
% plot(rx,ry)
% grid on

f=@(x) 0.*(-2<=x & x<2)+3.*(2<=x & x<6)+x.*(6<=x & x<10);
x=linspace(-2,10,100);
y=f(x);
I=[-14,24];
ry=repmat(y,1,3);
rx=linspace(I(1),I(2),length(ry));
plot(rx,ry,'.b')
grid on

