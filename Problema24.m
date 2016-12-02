%Animacion del problema 24
a = 10;
%Intervalo de graficacion
x=0:0.2:10;
%Definicion de los tiempos desde 0 hasta 6
y=0:0.1:5;

%funcion set(H,'property','value')
%se utiliza set(gca,'nextplot','replacechildren') el cual mantiene las
%propiedades de los ejes
set(gca,'nextplot','replacechildren');

%tamaño de los ejes
axis([-1 5 -1 5]);

for n=1:length(y)
    u=((4*(a^2))/(pi^3))*((1-cos(n*pi))/(n^3))*(sin((n*pi*x)/a))*(exp((-n*pi*y(n))/a));
    
    %funcion para graficar, x es el intervalo ya declarado
    plot(x,u);
    
    %se guarda en una matriz
    M(n)=getframe;
end
