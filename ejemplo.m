%Grafica problema 8.18

k = 10;
l = 24;
a = 20;
c = 1;
%Intervalo de Graficación
x=-10:0.1:20;

%Definición de los timepos desde 0 a 6, 
t=0:0.05:6; 

%Funcion set(H,'property', 'value')
%EN este caso al objeto gca, le agregamos la propiedad nextplit con el
%valor de replace children
set(gca,'nextplot','replacechildren');
%El objeto gca retorna los ejes actuales
%NextPlot: Resetea los ejes al agregar un nuevo plot
%'replacechildren' — Delete existing plots before displaying the new plot.

%Size de mis ejes, pueden o no coincidir con la definicio del intervalo x
axis([-10 20 -1 1]); 

%Animación = Secuenciad de graficos
for i=1:50
    %Definimos el valor de y
    y =(((2*k*(l^2))/(a*(l-a)*(pi^2)))*(1/(i^2))*sin((i*pi*a)/(l))*sin((i*pi*x)/(l))*cos((i*pi*c*t(i))/(l)));
    %Funcion para graficar, la x es el intervalo declarado previamente
    plot(x,y);
    %Guardamos el cuadro en una matriz, la matriz tendrá todas las gráficas
    M(i)=getframe;
end
    