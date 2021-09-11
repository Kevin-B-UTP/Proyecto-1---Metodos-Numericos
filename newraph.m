% Implementacion del metodo de newton raphson
% Grupo: Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano
% Escrito por Kevin Brennan - 2021

## newtonraphson(función, aproximacion=a, 0.0001)

function xn = newtonraphson (funcion, a, tol)
      clc;
      error = 10000;
      n=0;
      ## ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n   MÉTODO DE LA NEWTON-RAPHSON');
      fprintf('\n__________________________________');
      ## INSTRUCCIONES
      
      f = inline(funcion);
      derivada_funcion = diff(funcion, x);
      df = inline (derivada_funcion);
      ## CICLO- EVALUACIÓN- APROXIMACIÓN ?
      while (er>tol) 
      fa = feval (f, a);
      dfa = feval (df, a);
      xn = a - ((fa)/(dfa));
        if (n>0)
        
          er=abs(((xb-xn)/xb)*100);
          n=n+1;
          fprintf('\nIter. \t Xn \t\t ERROR AB. \n');
          fprintf('%2i \t %f \t  %f\n', n, xn, er);
          xb=xn;
       else
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
