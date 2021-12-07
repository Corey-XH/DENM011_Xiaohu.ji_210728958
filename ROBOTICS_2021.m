clear all;close all;clc
%%initialize
tao = 1;
L = 0.5;
m = 10;
wn = 1;
mu = 10;%0.1 % 0.2 0.5 1.0 2.0 10;
mu1 = 0.0;%0.1
mu2 = mu;

%%cofficient matrix
I11=m*L*L*(4/3+mu1+mu2);
I21=m*L*L*(1/2+mu2);
I22=m*L*L*(1/3+mu2);
kai11=m*L*(3/2+mu1+mu2);
kai22=m*L*(1/2+mu2);

sim('Robotesic_model.mdl',20)
load('out.mat')
figure
plot(y(1,:),y(2,:)*180/pi,'linewidth',2);hold on
plot(y(1,:),y(3,:)*180/pi,'linewidth',2);
legend('Reference','Theta1')
title('Theta1 Tracking')
xlabel('time (s)')
ylabel('Theta 1(Deg)')
grid on
figure
plot(y(1,:),y(4,:)*180/pi,'linewidth',2);hold on
plot(y(1,:),y(5,:)*180/pi,'linewidth',2);
xlabel('time (s)')
ylabel('Theta 2(Deg)')
grid on
legend('Reference','Theta2')
title('Theta2 Tracking')