clear
clc

syms F b v a m t
m=1000;
v=dsolve('Dv=(F-b*v)/m', 'v(0)=0', 't') %wsadzamy to do cftool
%a='(F-b*v)/m'
%v=dsolve(a, 'v(0)=0', 't')
X=[0:10:100];
Y=[0,39.3,63.2,77.7,86.5,91.8,95,97,98.2,98.9,99.3];
F=4999; % wyniki
b=49.98;% z cftool
%v=(4999 - 4999*exp(-(49.98*t)/1000))/49.98
a=diff(v,t) %jak widać a jest ciagle tylko na literach i nie wstawilo liczb
t=50
a50=double(subs(a)) %subs wstawia wartości liczbowe
v50=double(subs(v)) %a double wilicza wartosc
