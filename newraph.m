## newton-raphson(función, derivada, x_0, 0.0001)

function xn = reglafalsa (funcion, derivada, x_0 , tol)
      clc;
      ciclo = 0; 
      error = 10000;
      ## ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n   MÉTODO DE LA NEWTON-RAPHSON');
      fprintf('\n__________________________________');
    
      ## INSTRUCCIONES
      
      ## CICLO- EVALUACIÓN- APROXIMACIÓN ?
      
      ## SALIDA
         fprintf('\n\n================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACIÓN: %f', xn);
         fprintf('\n  ITERACIONES: %i', ciclo);
         fprintf('\n\n\n');
  
      
  
  
  endfunction
