## METODO_SECANTE(función, derivada, x_0, 0.0001)

function xn = reglafalsa (funcion, x_a, x_n , tol)
      clc;
      ciclo = 0; 
      error = 10000;
      ## ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n      MÉTODO DE LA SECANTE');
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