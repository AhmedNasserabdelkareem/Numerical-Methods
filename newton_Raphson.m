function [ iteration_no,excution_time,iteration,Xi,XiPlusOne,AbsErr ] = newton_Raphson( x0,str,upper,tolerance )
%finds root of a function.
%Given an initial point and the function, this function will find the
%nearest root using the newton raphson method.
tic;
xi = x0;
S = vectorize(char(str));
fn = str2func(['@(x) ' S]);
Xiold = inf(upper,1);
Xinew = inf(upper,1);
Ea = inf(upper,1);
for i = 1:upper
   syms x;
   fx = diff(fn,x);
   x = xi;
   xnew = xi - (subs(fn)/subs(fx));
   Xiold(i) = xi;
   Xinew(i) = xnew;
   Ea(i) = abs(xnew-xi);
   if (abs(xnew-xi)/xnew)<=tolerance
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

