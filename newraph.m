% Implementacion del metodo de newton raphson
% Grupo: Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano
% Escrito por Kevin Brennan - 2021

## newtonraphson(función, derivada de la funcion, aproximacion=a, 0.0001)

function xn = newtonraphson (f, df, a, tol)
      clc;
      er = 10000;
      n=0;
      ## ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n   MÉTODO DE LA NEWTON-RAPHSON');
      fprintf('\n__________________________________');
      f = feval (f, a);
      df = feval (df, a);
      ## CICLO- EVALUACIÓN- APROXIMACIÓN
      while (er>tol) 
        if (n>0)
          xn = a - ((f)/(df));
          er= abs(((xn-xb)/xn)*100);
          fprintf('\nIter. \t Xn \t\t ERROR. \n');
          fprintf('%2i \t %f \t  %f\n', n, xn, er);
          n=n+1;
          a=xn;
       endif    
         if (n==0)
              xn = a - ((f)/(df));
              fprintf('\nIter. \t Xn \n');
              fprintf('%2i \t %f \t  %f\n', n, a);
              n=n+1;
         endif
       xb=xn;
      endwhile
      ## SALIDA
         fprintf('\n\n===================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACIÓN: %f', xn);
         fprintf('\n  ITERACIONES: %i', n);
         fprintf('\n\n\n');
  endfunction
