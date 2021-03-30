clear
cla
clc

%[T,Y]=ode45(@osc, [0 5], [2 0]);
[T,Y]=ode45(@osc2, [0 5], [2 0], [], [.5 0]);
plot(T,Y);
