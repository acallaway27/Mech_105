t=linspace(0,0.8);
L=9;
R=60;
q0=10;
C=0.00005;

qt=q0*exp(-R*(t)/(2*L)).*cos((sqrt(1/(L*C)-(R/(2*L)).^2)*t));
plot(t,qt);
title ('electric circuit');
xlabel('time');
ylabel('charge');