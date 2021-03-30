clear
clc

syms F b v g m t
m=10
v=dsolve('Dv=(m*g-b*v)/m', 'v(0)=0', 't')
h=dsolve('D2x=g-b*Dx/m', 'x(0)=50','Dx(0)=0', 't')
subs(h)
%h=int(v,t)
X=[0:0.5:5]
Y=[50,49,46.5,42.8,38.2,32.8,26.8,20.4,13.6,6.6,0.0]
% b =       5.358
% g =      -8.256