% Implementacion del metodo de newton raphson
% Grupo: Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano
% Escrito por Kevin Brennan - 2021

## newtonraphson(función, derivada de la funcion, aproximacion, 0.0001)

function xn = newtonraphson (f, df, a, tol)
clc;
er = 10000;
n=0;

## ENCABEZADO
    fprintf('\n__________________________________');
    fprintf('\n   MÉTODO DE LA NEWTON-RAPHSON');
    fprintf('\n__________________________________');  
## CICLO- EVALUACIÓN- APROXIMACIÓN
    while (er>tol) 
      xn = a - ((feval (f, a)))/((feval (df, a)));
         if (n!=0)
             er=  abs(xn - xb);
         endif
      fprintf('\nIter. \t Xn \t\t ERROR. \n');
      fprintf('%2i \t %f \t  %f\n', n, xn, er);
      n=n+1;
      xb = xn;  
    endwhile
## SALIDA
fprintf('\n\n================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACIÓN: %f', xn);
         fprintf('\n  ITERACIONES: %i', n);
         fprintf('\n\n\n');   
endfunction
