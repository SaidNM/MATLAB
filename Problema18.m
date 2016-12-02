%animacion del problema 18
a=5;
l=20;
c=2;
k=1;

%intervalo de animacion
x=0:0.1:10;
%tiempo de animacion
t=0:0.05:6;

set(gca,'nextplot','replacechildren')

axis([-1 1 -1 1]);

for n=1:length(t)
    fu=((2*k*(l^2))/((pi^2)*a*(l-a)))*(1/(n^2))*(sin((n*pi*a)/(l)))*(sin((n*pi*x)/(l)))*(cos((n*pi*c*t(n))/(l)));
    
    %funcion para graficar, x es el intervalo ya declarado
    plot(x,fu);
    %se guarda en una matriz
    M(n)=getframe;
end