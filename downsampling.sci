
clear;
clc;
n=0:%pi/200:2*%pi;
x=sin(%pi*n);//original signal
downsampling_x=x(1:2:length(x));//downsampled by a factor of 2
subplot(2,1,1)
plot2d3(1:length(x),x);
xtitle('original signal')
subplot(2,1,2)
plot2d3(1:length(downsampling_x),downsampling_x);
xtitle('Downsampled Signal by a factor of 2');
