[x,y,z] = meshgrid(-1:1:1);
f1 = -y;
f2 = x;
f3 = z*0;
quiver3(x,y,z,f1,f2,f3)
xlabel('x')
ylabel('y')
zlabel('z')