% Implementacion del metodo de newton raphson
% Grupo: Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano
## Copyright (C) 2021 YÃ‰RCKEN= EDWAR G

## reglafalsa(función, a, b, 0.0001);

function xn = reglafalsa (funcion, a, b, tol)
    clc;
    ciclo = 0; 
    error = 10000;
    ## ENCABEZADO
    fprintf('\n__________________________________');
    fprintf('\n    MÉTODO DE LA REGLA FALSA');
    fprintf('\n__________________________________');
    
    
    
    ## EVALUO LA FUNCIÓN  EN a y b
    fa = feval (funcion, a);
    fb = feval (funcion, b);
    
    ## PASO #1 LA SOLUCIÓN ESTÁ EN EL INTERVALO?
    if( fa * fb ) < 0
    
        while error > tol 
          
            ## PASO #2 NUEVA APROXIMACIÓN
            xn = b-((fb*(a-b))/(fa-fb));
            fx = feval (funcion, xn);
            
            ## PASO #3 ERROR
            if( ciclo != 0 )
                error = abs(xn - xanterior); ##error absoluto
            endif
             
            ## PASO #4 IZQUIERDA O DERECHA 
             if fa * fx < 0
               b  = xn;
               fb = feval (funcion, b);
             else
               a = xn;
               fa = feval (funcion, a);
             endif
   
             fprintf('\nIter. \t xn \t\t ERROR AB \n');
             if( ciclo == 0 )
                fprintf('%2i \t %f \t  %f\n', ciclo, xn, abs(a-b));
             else
                fprintf('%2i \t %f \t  %f\n', ciclo, xn, error);
             endif
             
             
            xanterior = xn; 
            ciclo= ciclo + 1;
         endwhile  
         fprintf('\n\n================================');
         fprintf('\n   TOLERANCIA: %f',tol);
         fprintf('\n APROXIMACIÓN: %f', xn);
         fprintf('\n  ITERACIONES: %i', ciclo);
         fprintf('\n\n\n');
     else
         fprintf('\n_______________________________________');
         disp("La solucion no esta en el intervalo");
     endif
        
            
endfunction
