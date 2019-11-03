% HW#1 Q1.14 on pg 47 of Heath text
% factored and unfactored calculation of polynomial
% (x-1)^6
% x^6 - 6x^5 ...
% Compute and plot the values of this poly both factored and unfactored
% 101 equally spaced points interval [0.995, 1.005]
clc,clear

x = linspace(0.995,1.005,101); % Array to 101 values
%fac = 1:101;
%unfac = 1:101;
% Create Array from 0 to -16 power of 10

fac_fun=@(x) (x-1).^6;
unfac_fun=@(x) x.^6 - 6*x.^5 + 15*x.^4 -20*x.^3 + 15*x.^2 - 6*x + 1;

fac = feval(fac_fun,x);
unfac = feval(unfac_fun,x);

% Plot the two graphs
plot(x,fac,'r*')
hold on
plot(x,unfac,'b-')
hold off   

%|xc-r| forward error for factored
%f_err_fac = yf
%|(xc-r)^6| backward error for factored
% The true root is at x=1 y=f(x)=0
% assume an approximate for both of 0.9999 for x
for_fac_err = abs(1 - 0.9999)
bak_fac_err = abs((1-0.9999).^6)

for_u_err = abs(1-0.9999)
bak_u_err = abs(feval(unfac_fun,for_u_err))

fcond = bak_fac_err/for_fac_err
ufcond = bak_u_err/for_u_err

