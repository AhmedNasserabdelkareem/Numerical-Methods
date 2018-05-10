function [ fn,fx,error,iteration_no,excution_time,iteration,Xi,XiPlusOne,Fx,AbsErr ] = newton_Raphson( x0,str,upper,tolerance )
%finds root of a function.
%Given an initial point and the function, this function will find the
%nearest root using the newton raphson method.
tic;
xi = x0;
error = 0;
S = vectorize(char(str));
fn = str2func(['@(x) ' S]);
Xiold = inf(upper,1);
Xinew = inf(upper,1);
Ea = inf(upper,1);
for i = 1:upper
   syms x;
   fx = diff(fn,x);
   Fx(i) = fx;
   %x = xi;
   if(subs(fx,x,xi) == 0 || (i == 10 && Ea(1) < Ea(i))) 
      error = 1;
      break;
   end
   %x = xi;
   fnVal = subs(fn,x,xi);
   fxVal = subs(fx,x,xi);
   xnew = xi - (fnVal/fxVal);
   xnew = vpa(xnew);
   Xiold(i) = xi;
   Xinew(i) =vpa(xnew);
   test = ((abs(vpa(xnew)-xi)/vpa(xnew)));
   Ea(i) = test;
   if (abs(vpa(test))<=tolerance)
       break;
   end 
   xi=vpa(xnew);
end
iteration = 1:i;
iteration_no = i;
Xi = Xiold;
XiPlusOne = Xinew;
AbsErr = Ea;
excution_time = toc;
end

