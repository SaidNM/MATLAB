%Grafica problema Flujo de Calor
u=10;
b=3;

%Intervalo de Graficaci�n
x=-1:0.1:5;

%Definici�n de los timepos desde 0 a 6, 
t=0:0.05:6; 

set(gca,'nextplot','replacechildren');

%Tama�o de mis eje
axis([-5 5 -5 5]); 

%Animaci�n = Secuenciad de graficos
for j=1:50
    %Definimos el valor de y
    y =2*((-u)/(j*pi*(sinh((pi*j)/b))))*((cos(j*pi))-1)*(sin((j*pi*t(j))/b))*(sinh((j*pi*x)/b));
    %Funcion para graficar, la x es el intervalo declarado previamente
    plot(x,y);
    %Guardamos el cuadro en una matriz, la matriz tendr� todas las gr�ficas
    M(j)=getframe;
end