% Finite difference example: tan(x) at x=1
% f(x)=tan(x)
% plot error for h exp k=0 to -16
% actual is square of sec(x)
% use log scale for h and magnitude of error
h = 1:17; % Array to hold base 1 x 10 to the x
z = 1:17; % Array to hold total error
% Create Array from 0 to -16 power of 10
for k = 1:17
h(k) = 10.^(-1*(k-1));
end
% Solve for total error
for m = 1:17
% this is f^(x^) - f(x) total error
z(m) = abs( (tan(1+h(m)) - tan(1))/h(m) - sec(1)^2 );
end
loglog(h,z); % Display in loglog plot