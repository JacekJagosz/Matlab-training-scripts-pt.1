clear
clc
cla

N=1000;
ns=0;
for i=1:N
    x=rand;
    y=rand;
    
    plot(x,y,'*b')
    hold on
    if abs(x-y)<.25
        ns=ns+1;
        plot(x,y,'*r')
    end
end
ns
ns/N