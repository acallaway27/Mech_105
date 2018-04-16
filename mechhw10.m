%% 
%This is a script that calls a previously made false position function in order to estimate
%the root of an equation for the mole fraction of H20 that will dissociate
%when given a certain pressure and K value (the reaction's equilibrium
%constant)

%by Andrew Callaway 2-22-18

%%
k=0.05;              %defines variable k, the reaction's equilibrium constant
pt=3;                %defines variable pt, the pressure given during the reaction                        
%%
f=@(x) x/(1-x)*sqrt((2*pt)/(2+x))-k;  %sets up equation given in hw description, subtracting k so that the equation equals 0,
                                        % so that we can use false position to determine the root
    
fplot(f)                                  
%%                                        
[root,fx,ea,iter] = falsePosition(@(x) f(x),0,0.1);     %calls false position function that I previously made,
                                                        %says what outputs to define

fprintf('root equals%3f\n',root)        %prints value of root
