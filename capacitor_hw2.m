Andrew Callaway
Mech 105
HW2





q0=10;
R=60;
L=9;
C=0.00005;
t=linspace(0,0.8);
qt=q0*exp(-R*(t)/(2*L)).*cos((sqrt(1/(L*C)-((R)/(2*L)).^2)*t))
plot(t,qt)
title('capacitor plot')
xlabel('time')
ylabel('capacitor charge')

subplot(2,1,1)
C2=0.0005
qt2=q0*exp(-R*(t)/(2*L)).*cos((sqrt(1/(L*C2)-((R)/(2*L)).^2)*t))
plot(t,qt2)
title('10x capacitor')
xlabel('time')
ylabel('charge')
%Because C go 10 times bigger, and it was in the denominator of a cosine
%function, the period for the second plot got bigger.

%%
T=linspace(0,70)
c=4.84*exp(-0.034*(T))
plot(T,c,'--go')
hold on
min=[10,20,30,40,50,60]'
ppm=[3.4,2.6,1.6,1.3,1.0,0.5]'
plot(min,ppm,'rd')
xlabel('time')
ylabel('concentration')
title('photodegradation of aqueous bromide')




