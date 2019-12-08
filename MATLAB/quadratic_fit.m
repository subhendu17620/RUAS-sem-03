x = [1.5 2 2.5 3 3.5 4];
y = [1.3 6.7 12 25.7 35.4 44.1];
p = polyfit(x,y,2);
plot(x,y,'*')
syms t
t=min(x):0.1:max(x);
yp = p(1)*(t.^2)+p(2)*t+p(3);
hold on
z=eval(yp);
plot(t,z,'r')
fprintf('Quaratic fit for the given data is: y = ')
disp(vpa(yp,4))