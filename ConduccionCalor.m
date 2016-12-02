%Grafica problema Conduccion de Calor
l=10;
c=3;


%Intervalo de Graficación
x=-1:0.1:5;
%Definición de los timepos desde 0 a 6, 
t=0:0.05:6; 

set(gca,'nextplot','replacechildren');

%Tamaño de mis eje
axis([-5 5 -5 5]); 

%Animación = Secuenciad de graficos
for i=1:100
    %Definimos el valor de y
    f =((4*l)/((((2*i)+1)^2)*(pi^2)))*((-1)^i)*(sin((((2*i)+1)*pi*x)/l))*(exp((-(c^2)*(((2*i)+1)^2)*(pi^2)*t(i))/(l^2)));
    
    %Funcion para graficar, la x es el intervalo declarado previamente
    plot(x,f);
    %Guardamos el cuadro en una matriz, la matriz tendrá todas las gráficas
    M(i)=getframe;
end