clear
clc
inside=0;
outside=0;
[X Y Z]=sphere;
surf(X,Y,Z,'edgealpha', 0.2, 'facecolor', 'none')
hold on
for i=1:100
    temp=rand([1,3])*2-1;
    %if temp(2)<=sqrt(1-temp(1)*temp(1)) & temp(2)>=(-1)*sqrt(1-temp(1)*temp(1));
    if temp(1)*temp(1)+temp(2)*temp(2)+temp(3)*temp(3)<=1
        inside=inside+1;
        plot3(temp(1), temp(2), temp(3),'*b');
        %hold on;
    else
        outside=outside+1;
        p=plot3(temp(1), temp(2), temp(3), '*', 'markeredgecolor', '#D3D3D3');
        %hold on;
    end
    pause(0.0001);
    hold on;
end
inside/(inside+outside)
inside/(inside+outside)/0.125*3/4
