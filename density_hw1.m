z=linspace(-5,5);
fz=(1/sqrt(2*pi))*exp(1).^((-z.^2/2));
plot(z,fz)
title('Density Function')
xlabel('z')
ylabel('frequency')
