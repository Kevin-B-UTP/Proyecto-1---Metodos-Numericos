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
         
      ## CICLO- EVALUACIÓN- APROXIMACIÓN ?
      while (er>tol) 
      f = feval (f, a);
      df = feval (df, a);
      xn = a - ((f)/(df));
        if (n>0)
          er=abs(((xb-xn)/xb))*100;
          n=n+1;
          fprintf('\nIter. \t Xn \t\t ERROR AB. \n');
          fprintf('%2i \t %f \t  %f\n', n, xn, er);
          xb=xn;
       endif    
       if (n==0)
            fprintf('\nIter. \t Xn \n');
            fprintf('%2i \t %f \t  %f\n', n, xn);
            n=n+1;
            xb=xn;
       endif  
      endwhile
      ## SALIDA
         fprintf('\n\n================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACIÓN: %f', xn);
         fprintf('\n  ITERACIONES: %i', n);
         fprintf('\n\n\n');
  endfunction
