% Implementacion del metodo de secante
% Grupo: Kevin Brennan, Edwar Gonzalez, Guillermo Lezcano
%Advertencia: Escribir secante en la consola de comandos para inicializar

  clear, clc
  cf = input('Ingrese funcion: ');
  f = inline(cf);
  x0 = input('ingrese primer valor: ');
  x1 = input('ingrese segundo valor: ');
  tol = input('ingrese la tolerancia deseada: ');
  error = 100;
  n = 0;
  fprintf('    n     xo       x1      x2    error\n');
  fprintf('%i \t %4.4f \t %4.4f \t ---- \t ----\n',n,x0,x1);
  while ( error>tol )
     x2 = x1 - (x1-x0)*f(x1)/(f(x1)-f(x0));
     error = abs ( f(x2) );
     fprintf('%i  \t %4.4f  \t   %4.4f \t %4.4f \n',n,x0,x1,x2,error);
     x0 = x1;
     x1 = x2;
     n = n+1;   
  end
