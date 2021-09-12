% Implementacion del metodo de newton raphson
% Grupo: Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano

## newton-raphson(función, derivada, x_0, 0.0001)

function xn = reglafalsa (funcion, derivada, xi , tol)
      clc;
      ciclo = 0; 
      error = 10000;
      ## ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n   MÉTODO DE LA NEWTON-RAPHSON');
      fprintf('\n__________________________________');
   
      ## CICLO- EVALUACIÓN- APROXIMACIÓN ?
        while error > tol 
          
          ## NUEVA APROXIMACIÓN
           xn =  xi- (( feval (funcion, xi))/(feval (derivada, xi)));
           
          ## ERROR
            if( ciclo != 0 )
                error = abs(xn - xi); ##error absoluto
            endif
            
           ## impresión 
            fprintf('\nIter. \t xn \t\t ERROR AB \n');
            if( ciclo == 0 )
                fprintf('%2i \t %f ', ciclo, xn );
            else
                fprintf('%2i \t %f \t  %f\n', ciclo, xn, error);
            endif
            
            xi = xn;
            ciclo = ciclo + 1;
          endwhile
        
      ## SALIDA
         fprintf('\n\n================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACIÓN: %f', xn);
         fprintf('\n  ITERACIONES: %i', ciclo);
         fprintf('\n\n\n');
  endfunction

