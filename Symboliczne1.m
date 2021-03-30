clear
clc

syms x n
f1=x^3 - 2*x^2 + 3*x - 5;
S1=solve(f1)
double(S1)

f2=1/n;
S2_1=symsum(f2, n, 1, 33)
double(S2_1)

S2_2=symsum(f2, n, 1, inf)
double(S2_2)

f3=1/(n^2);
S3_1=symsum(f3, n, 1, inf)
double(S3_1)

f4=sin(x)^2;
S4=diff(f4)

f5=1/x;
S5=int(f5)

f6=exp(-x^2)
S6=int(f6)

S5_2=int(f5,x,1,inf)

S6_2=int(f6,x,0,inf)

f7=1/(x^2)
S7=int(f7,x,1,inf)

S8=dsolve('diff(x,t,2)=-5-x')