function Xn = Newton_Rap (F,f,X0,error,maxiter)
i=0;
er=9999999;  %% inicio de acumuladores 
xi=X0-(F(X0)/f(X0)); %%primera iteracion(x1)
xant=xi;
  while er>=error && i<maxiter && er2>=error2
    xi=xi-(F(xi)/f(xi)); %%n-esimas iteraciones
    i=i+1;               %% acumulador para comparar con maximo de iteraciones
    er=abs(F(xi));       %% error absoluto en Y
    er2=abs(xant-xi);
    xant=xi;
  endwhile
Xn=xi
iteraciones=i+1
f_xn=F(xi)
delta_fx_distanciaalejeY=er
endfunction