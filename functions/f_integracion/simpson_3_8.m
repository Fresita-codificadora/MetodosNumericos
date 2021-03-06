function resultado = simpson_3_8 (XY,limites)
  T=size(XY);
paso=abs(XY(1,1)-XY(2,1)); %%paso
pasoi=0;
##for i=2:T(1)-1 %%verificamos que el paso sea constante
##   pasoi=abs(XY(i,1)-XY(i+1,1));
##   if pasoi ~= paso
##      disp('EL PASO NO ES CONSTANTE ENTRE LOS PUNTOS, NO SE PUEDE APLICAR TRAPECIOS, INTENTE OTRO INTERVALO O VERIFIQUE SUS PUNTOS');
##      disp('EL PASO NO ES CONSTANTE ENTRE LOS PUNTOS, NO SE PUEDE APLICAR TRAPECIOS, INTENTE OTRO INTERVALO O VERIFIQUE SUS PUNTOS');
##      disp('EL PASO NO ES CONSTANTE ENTRE LOS PUNTOS, NO SE PUEDE APLICAR TRAPECIOS, INTENTE OTRO INTERVALO O VERIFIQUE SUS PUNTOS');
##      disp('EL PASO NO ES CONSTANTE ENTRE LOS PUNTOS, NO SE PUEDE APLICAR TRAPECIOS, INTENTE OTRO INTERVALO O VERIFIQUE SUS PUNTOS');
##      disp('EL PASO NO ES CONSTANTE ENTRE LOS PUNTOS, NO SE PUEDE APLICAR TRAPECIOS, INTENTE OTRO INTERVALO O VERIFIQUE SUS PUNTOS');
##      BREAK;
##   endif
##endfor
%%buscamos los limites en XY
limsup=0;
liminf=0;
for i=1:T(1)
  if XY(i,1)==limites(1)
    liminf=i;
  endif
  if XY(i,1)==limites(2)
    limsup=i;
  endif
endfor
%% calculamos m para verificar si se puede vamos a hacer n=3m, m>=3, m entero
cantdepuntos=abs(limsup-liminf);
m=cantdepuntos/3;
error=true;
if m<3 && mod(m,1)~=0 
   disp('m<3 O NO ES UN NUMERO ENTERO DE PUNTOS NO SE PUEDE USAR EL METODO');
   disp('m<3 O NO ES UN NUMERO ENTERO DE PUNTOS NO SE PUEDE USAR EL METODO');
   disp('m<3 O NO ES UN NUMERO ENTERO DE PUNTOS NO SE PUEDE USAR EL METODO');
   disp('m<3 O NO ES UN NUMERO ENTERO DE PUNTOS NO SE PUEDE USAR EL METODO');
   error=false;
endif
%%calculamos la integral
if limsup==liminf  %%verificamos que los limites no sean iguales
  disp('LOS LIMITES SON IGUALES LA INTEGRAL VALE 0');
  resultado=0;
elseif error
  suma1=0;%% la sumatoria1 y la sumatoria2 la iniciamos
  suma2=0;
  suma3=0;
  nparafor=(((limsup-3)/3)-(1/3));
  for i=0:1:nparafor
    suma1=suma1+XY((3*i)+2,2); %%suma1 que va desde 0 hasta n-3/3
    suma2=suma2+XY((3*i)+3,2); %%suma2 que va desde 0 hasta n-3/3
  endfor
  for i=1:1:nparafor
    suma3=suma3+XY((3*i)+1,2); %%suma3 que va desde 1 hasta n-3/3
  endfor
  suma1=3*suma1; %%multiplicamos por 3 a la sumatoria1
  suma2=3*suma2;%%multiplicamos por 3 a la sumatoria2
  suma3=2*suma3; %%multiplicamos por 2 a la sumatoria3
  resultado=((3*paso)/8)*(XY(liminf,2)+XY(limsup,2)+suma1+suma2+suma3); %%generamos el resultado 
endif

endfunction
