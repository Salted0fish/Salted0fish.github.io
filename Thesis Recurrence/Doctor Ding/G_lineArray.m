clear
clc
format long

f=30*10e9; % f=30GHz
c=3*10e8;
lambda=c/f;
k=2*pi/lambda;
d_line=0.5*lambda;
N=8;
% theta_max=(10/180)*pi;

for theta_max=pi*(0:10:80)/180
% for N=8:4:20
%     theta_max=(30)/180*pi;
    fai  = @(theta) k*d_line*(sin(theta)-sin(theta_max));
    e_up   = @(theta) sin(0.5.*N.*fai(theta));
    e_down = @(theta) N*sin(0.5*fai(theta));
    AFn   = @(theta) e_up(theta)./e_down(theta);
    e_out  = @(theta) ((AFn(theta)).^2).*sin(theta);
    ezpolar (e_out)
%     fplot(e_out)
%     axis([0 pi -1 1])
%     grid on
%     title(theta_max/pi*180)
%     e = @(theta) e_out(theta);
%     integral2(e,0,pi,0,2*pi)
    Garray_line = 2/quadgk(e_out,0,pi);
    Garray_line = 10*log10(Garray_line)
%     G_=10*log10(4*pi*N*(d_line^2)*cos(theta_max)/(lambda^2))
end