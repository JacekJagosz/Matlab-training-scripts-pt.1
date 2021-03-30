clear
clc
x=-10:0.4:10;
y=-10:0.4:10;
[x,y]=meshgrid(x,y)
%v=x.*x-y.*y;
v=cos(sqrt(x.*x+y.*y));
f1=figure;
%f2=figure;
set(f1, 'position', [100, 100, 800, 500])
[ON, map1, ONalpha] =imread('RTXON.png')
[OFF, map2, OFFalpha] =imread('RTXOff.png')
for i=0:0.2:10
    v=cos(sqrt(x.*x+y.*y)-i);
    subplot(1,2,1)
    %figure(f1);
    surf(x,y,v)
    shading flat
    axis([-10    10   -10    10    -2     2])
    axis off
    title('RTX OFF')
    %axes('pos',[.1 .6 .5 .3])
    %imshow(test)
    
    if mod(i,0.6)==0
        subplot(1,2,2)
        %figure(f2);
        surf(x,y,v)
        shading interp
        %colormap(turbo)
        colormap(cool)
        %view(-10, 35)
        axis([-10    10   -10    10    -2     2])
        %axis([-10    10   -10    10    -10     10])
        %colorbar
        lightangle(35, i*18)
        axis off
        title('RTX ON')
    end
    
    axes('pos',[.42 0.03 .62 .23])
    fON=imshow(ON)
    set(fON, 'AlphaData', ONalpha);
    axes('pos',[.1 0 .3 .3])
    fOFF=imshow(OFF)
    set(fOFF, 'AlphaData', OFFalpha);
    pause(0.001);
end
