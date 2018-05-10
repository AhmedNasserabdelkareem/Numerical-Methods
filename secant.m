function [ error,fn,fx,iteration_no,excution_time,iteration,Xi,XiPlusOne,XiMinusOne,AbsErr ] = secant( xold0,xold1,str,upper,tolerance )
%secant finds root of given function.
%   Secant method finds the root of the given function using the secant
%   method.
tic;
error = 0;
Xiold0 = inf(upper,1);
Xiold1 = inf(upper,1);
Xinew = inf(upper,1);
Ea = inf(upper,1);
for i = 1:upper
   syms x;
   S = vectorize(char(str));
   fn = str2func(['@(x) ' S]);
   fx = diff(fn,x);
   %x=xold0;
   fnold0=subs(fn,x,xold0);
   %x=xold1;
   fnold1=subs(fn,x,xold1);
   if (fnold1-fnold0) == 0 || (i == 10 && Ea(1) < Ea(i))
      error = 1;
      break;
   end     
   xnew=xold1-fnold1*(xold1-xold0)/(fnold1-fnold0);
   Xiold0(i) = xold0;
   Xiold1(i) = xold1;
   Xinew(i) = vpa(xnew);
   
   if (xnew == 0)
      Ea(i) = 1000;
   else
       Ea(i) = abs((vpa(xnew)-xold1)/vpa(xnew));
       if (abs((vpa(xnew)-xold1)/vpa(xnew))<=tolerance) || subs(fn,x,xnew) == 0
           
       break;
      end 
   end    
   xold0=xold1;
   xold1=vpa(xnew);
end    
iteration_no = i;
iteration = 1:i;
Xi = Xiold1;
XiPlusOne = Xinew;
XiMinusOne = Xiold0;
AbsErr = Ea;
excution_time = toc;
end

