clear
cla
clf
clc


a=imread('pomble.jpg');
%b=img2bw(a,50);
b=imadjust(a,[15/255, 120/255]);
%imshow(b);
%figure;
c=medfilt2(b, [15 15]);
m=median(median(c))
d=im2bw(c, 180/255.0);
%imshow(c);
subplot(2,2,1);
imshow(a);
subplot(2,2,2);
imshow(b);
subplot(2,2,3);
imshow(c);
subplot(2,2,4);
imshow(d);
%imhist(a); %Kolejne linie są zupełnie niepotrzebne
figure;
subplot(2,2,1);
imhist(a);
subplot(2,2,2);
imhist(b);
subplot(2,2,3);
imhist(c);
subplot(2,2,4);
imhist(d);

L=bwlabel(d);
s = regionprops(L, 'all');
figure;
%imshow(s(140).Image);
for i=1:size(s,1)
    p(i)=s(i).Area;
end
%hist(p, 25)
figure;
imshow(a);
hold on;
for i=1:size(s,1)
    x=s(i).Centroid;
    plot(x(1), x(2),'*r');
    hold on;
end