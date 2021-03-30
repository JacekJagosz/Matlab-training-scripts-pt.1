clear
clc
cla
N=10;
n=0;
for i=1:N
    %x=rand;
    %y=(1-x)*rand;
    %y=rand;
    %z=1-x-y;
    x=rand(1,2);
    x=sort(x);
    a=x(1);
    b=x(2)-x(1);
    c=1-a-b;
    if a+b>c & a+c>b & b+c>a
        n=n+1;
        p(i)=plot(a,b,'*r');
    else
        p(i)=plot(a,b,'+b');
    end
    hold on
end
set(p([2 5 7]), 'markersize', 20)
n/N