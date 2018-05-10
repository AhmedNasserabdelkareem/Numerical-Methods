function [ error,iteration_no,excution_time,iteration,Xi,XiPlusOne,AbsErr ] = newton_Raphson( x0,str,upper,tolerance )
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
   x = xi;
   if(subs(fx) == 0 || (i == 10 && Ea(1) < Ea(i))) 
      error = 1;
      break;
   end
   x = xi;
   xnew = xi - (subs(fn)/subs(fx));
   xnew = vpa(xnew);
   Xiold(i) = xi;
   Xinew(i) =xnew;
   Ea(i) = abs(xnew-xi);
   test = ((abs(vpa(xnew)-xi)/vpa(xnew)));
   if (vpa(abs(test))<=tolerance)
       break;
   end 
   xi=xnew;
end
iteration = 1:i;
iteration_no = i;
Xi = Xiold;
XiPlusOne = Xinew;
AbsErr = Ea;
excution_time = toc;
end

