clear
clc
xx=-2:0.2:2;
yy=-2:0.2:2;
zz=-2:0.2:2;
[x,y,z]=meshgrid(xx,yy,zz)

v=sin(x).*cos(y+z).*exp(-x.*z);
colormap turbo
for i=0:0.1:10
    slice(x,y,z,v, 2*sin(i), 2*sin(i), 2*sin(i))
    view(i*36,35)
    pause(0.1)
    
end