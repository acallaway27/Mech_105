function[root,fx,ea,iter]=falsePosition(func,xl,xu,es,maxit,varargin)
% falsePosition: will find the roots of a given function
%(func,xl,es,maxit,varargin)=inputs
%func= equation used in this method of root finding
%xl= lower bound of interval where a sign change occurs
%es= level of error the user will allow for the final root value
%maxit= maximum number of iterations the user will allow
%varargin=
% [root,fx,ea,iter]=outputs
%root= estimated root found by the function from the inputs
%fx= function for equation for approximated root
%ea= value for error for the given approximation
%iter= the number of times the code was run until a close
%enough answer was found

%% by Andrew Callaway on 2-19-18
%%
if nargin<3                                             %makes sure user inputs enough arguments
    error('3 input arguments required');       
end    
test=func(xl,varargin{:})*func(xu,varargin{:});         %finds interval where sign change occurs
if test>0
    error('sign did not change');                       %error for if there is no sign change, and therefore, no root
end            
if nargin<4||isempty(es), es=0.0001;                    
end                 
if nargin<5||isempty(maxit), maxit=50;
end
%%
iter=0; xr=xl; ea=100;

while(1)                                                % while 'true'
            
    xrprev=xr;                                          % previous guess for x is answer
    numerator=double(func(xu))*(xl-xu);                 %defining numerator and denominator of func for simplicity
    denominator=double(func(xl))-double(func(xu));
    xr=xu-((numerator/denominator));                    % uses numerator and denominator variables instead of a more complicated equation
    iter=iter+1;
    if xr~=0
        ea=abs((xr-xrprev)/xr)*100;                     %calculates error for approximation
    end
    test=func(xl,varargin{:})*func(xr,varargin{:});     %if the function at xl is less than zero, xu should be the root
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;                                          %if the function at xu is less than zero, xl should be the root
    else
        ea=0;                                           %if neither is true, the root approximated is exactly right, and your error is 0
    end
    if ea<=es||iter>=maxit,break,end                    %if threshold for acceptable error or iterations is reached, end 
end
root=xr; fx=func(xr,varargin{:});                       %final root approximation
    
