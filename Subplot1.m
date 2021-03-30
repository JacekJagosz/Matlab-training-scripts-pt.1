clear
clc
w1=1;
w2=3;
fa=0;
f=figure
%set(f,'color', 'k')
title('test')
t=0:0.1:2*pi+0.1;
for j=1:1:50
    fa=fa+pi/20;
    for i=1:4
        fa=fa+pi/2;
        subplot(2,2,mod(i-1,4)+1)
        x=sin(w1*t);
        y=sin(w2*t+fa);
        p=plot(x,y,'Color',hsv2rgb(j/200+i*0.25-0.25,1,1));
        set(gca,'color',hsv2rgb(j/50,0.1,1))
        set(f,'color',hsv2rgb(j/50,0.2,0.8))
        pause(.0001);
    end
end