## METODO_SECANTE(funci�n, derivada, x_0, 0.0001)

function xn = reglafalsa (funcion, x_a, x_n , tol)
      clc;
      ciclo = 0; 
      error = 10000;
      ## ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n      M�TODO DE LA SECANTE');
      fprintf('\n__________________________________');
    
      ## INSTRUCCIONES
      
      ## CICLO- EVALUACI�N- APROXIMACI�N ?
      
      ## SALIDA
         fprintf('\n\n================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACI�N: %f', xn);
         fprintf('\n  ITERACIONES: %i', ciclo);
         fprintf('\n\n\n');
  
      
  
  
  endfunction