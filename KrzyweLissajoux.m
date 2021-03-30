clear
clc

w1=1;
w2=2;
fa=pi/1;

t=0:0.1:2*pi+0.1;

for fa=0:0.02*pi:2*pi
    x=sin(w1*t);
    y=sin(w2*t+fa);
    plot(x,y);
    pause(.1)
end
