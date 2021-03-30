clear
clc
cla
%N=100;
%n=0;
x=-pi:pi/100:pi;
y=(tan(sin(x))) - sin(tan(x));
figure
p=plot(x,y,'--rs')