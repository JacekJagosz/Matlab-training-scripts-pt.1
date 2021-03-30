function dy = osc2(t,y,p)
dy=zeros(2,1);
dy(1)=y(2);
dy(2)=-p(2)*y(2)-p(1)*y(1);
end