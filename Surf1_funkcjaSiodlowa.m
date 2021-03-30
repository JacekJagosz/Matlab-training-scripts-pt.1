clear
clc
x=-10:0.4:10;
y=-10:0.4:10;
[x,y]=meshgrid(x,y)
%v=x.*x-y.*y;
v=cos(sqrt(x.*x+y.*y));

%s=surf(x,y,v,'EdgeAlpha', 1)
% surf(x,y,v)
% shading flat
% colormap(turbo)
% view(-10, 35)
% colorbar
for i=0:0.2:20
    v=cos(sqrt(x.*x+y.*y)-i);
    surf(x,y,v)
    shading flat
    %colormap(turbo)
    colormap(cool)
    view(-10, 35)
    axis([-10    10   -10    10    -10     10])
    colorbar
    lightangle(35, i*18)
    pause(0.001);
end
