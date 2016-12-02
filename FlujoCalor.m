%Grafica problema Flujo de Calor
u=10;
b=3;

%Intervalo de Graficación
x=-1:0.1:5;

%Definición de los timepos desde 0 a 6, 
t=0:0.05:6; 

set(gca,'nextplot','replacechildren');

%Tamaño de mis eje
axis([-5 5 -5 5]); 

%Animación = Secuenciad de graficos
for j=1:50
    %Definimos el valor de y
    y =2*((-u)/(j*pi*(sinh((pi*j)/b))))*((cos(j*pi))-1)*(sin((j*pi*t(j))/b))*(sinh((j*pi*x)/b));
    %Funcion para graficar, la x es el intervalo declarado previamente
    plot(x,y);
    %Guardamos el cuadro en una matriz, la matriz tendrá todas las gráficas
    M(j)=getframe;
end