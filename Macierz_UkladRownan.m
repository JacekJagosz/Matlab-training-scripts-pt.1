clc
A=[3 -1 2 -1; 1 2 -1 3; -1 1 -3 1; 2 3 4 -2];
Y=[2;3;-2;0];
W=det(A)
temp=A;
temp(:,1)=Y;
W1=det(temp)

temp=A;
temp(:,2)=Y;
W2=det(temp)

temp=A;
temp(:,3)=Y;
W3=det(temp)

temp=A;
temp(:,4)=Y;
W4=det(temp)

x1=W1/W
x2=W2/W
x3=W3/W
x4=W4/W
x=[x1;x2;x3;x4]
A*x