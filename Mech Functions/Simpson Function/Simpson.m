function [I] = Simpson(x,y)
%The Simpson function will find the integral of a given set of data points.
%For the Simpson rule to be implemented properly, there must be an even
%number of intervals. So, in this function I added lines of code to make
%sure that if there was an odd number of intervals, the Trapezoidal Rule
%would be used on the last interval and added to the result of the other
%intervals on which the Simpson method had determined the integral. The
%results of both rules are then added to give the user a final integral.
%   Inputs
%       x = horizontal component of the vector being integrated
%       y = vertical component of the vector being integrated
%   Outputs
%       I = the approximated integral of the data points given
%
%   by Andrew Callaway 4-8-18


n = length(x);
m = length(y);
if n ~= m      %checking to ensure the number of x given equals the number of y given
    error('Vector dimensions must be equal')
end

j = diff(x);           %makes sure intervals are equal in length
if min(j) ~= max(j)
    error('Intervals must be spaced evenly')
end

evenInt = mod(n,2);         %'mod' gives you the remainder of a number (n) when divided by another number (2)
if evenInt == 0             %finding if there is an even or odd number of intervals
    warning('Odd number of Intervals, the Trapezoid rule will be used in addition to Simpsons 1/3 Rule')
    T = n-1;
else 
    T = n;       
end

h = (max(x) - min(x))/T;                            %calculates step size
I = sum(y(1:2:T-2)+4*y(2:2:T-1)+y(3:2:T))*h/3;      %Simpson's 1/3 Rule
if evenInt == 0
    I = I + ((y(n-1)+y(n))/2)*h;                %adds result of Simpson's rule and Trapezoidal rule
end                                             %if there were an odd number of intervals to get a final 
end                                             %approximation of the Integral

