clear
clc
cla
fid_1 = fopen('dane_2.txt','r');

%a=fscanf(fid_1, '%c', 5)
%a=fscanf(fid_1, '%c') %czytanie całości
%a=fscanf(fid_1, '%s') %bez białych znaków
a=fscanf(fid_1, '%s', 4)
g1=fscanf(fid_1, '%s', 1)
g2=fscanf(fid_1, '%s', 1)
%a=fscanf(fid_1, '%s', 1)
%l=fscanf(fid_1, '%f', 2)
l=fscanf(fid_1, '%f', [2 inf])
X=l(1,:)
Y=l(2,:)
plot(X, Y, '.')
hold on
[p,s]=polyfit(X,Y,9)
w=polyval(p,X);
plot(X, w);
fclose(fid_1);

%zapis do pliku
an=[X;Y;w]
czas=clock;
fid_2=fopen('dane_nowe.txt', 'w');
fprintf(fid_2, 'Data obliczeń: %i:%i:%i\r\n', czas(1), czas(2), czas(3));
fprintf(fid_2, 'Godzina obliczeń: %i:%i\r\n', czas(4), czas(5));
fprintf(fid_2, '%s %s dopasowanie\r\n', g1, g2);
fprintf(fid_2, '%3d %6.2f %6.2f \r\n', an);
fclose(fid_2);