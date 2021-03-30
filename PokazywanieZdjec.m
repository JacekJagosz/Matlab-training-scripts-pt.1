clear
cla
clc

a=imread('galia.png');
subplot(2,3,1);
imshow(a);
title('Org');

b=a;
b(:,:,3)=0;
subplot(2,3,2);
imshow(b);
title('RG');

c=a;
c(:,:,2)=0;
subplot(2,3,3);
imshow(c);
title('RB');

d=a;
d(:,:,2:3)=0;
subplot(2,3,4);
imshow(d);
title('R');

e=a;
e(:,:,[1,3])=0;
subplot(2,3,5);
imshow(e);
title('G');

f=a;
f(:,:,1:2)=0;
subplot(2,3,6);
imshow(f);
title('B');