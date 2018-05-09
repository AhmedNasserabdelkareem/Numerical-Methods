function [ iteration_no,excution_time,iteration,Xi,XiPlusOne,XiMinusOne,AbsErr ] = secant( xold0,xold1,str,upper,tolerance )
%secant finds root of given function.
%   Secant method finds the root of the given function using the secant
%   method.
tic;
Xiold0 = inf(upper,1);
Xiold1 = inf(upper,1);
Xinew = inf(upper,1);
Ea = inf(upper,1);
for i = 1:upper
   syms x;
   S = vectorize(char(str));
   fn = str2func(['@(x) ' S]);
   x=xold0;
   fnold0=subs(fn);
   x=xold1;
   fnold1=subs(fn);
   xnew=xold1-fnold1*(xold1-xold0)/(fnold1-fnold0);
   Xiold0(i) = xold0;
   Xiold1(i) = xold1;
   Xinew(i) = xnew;
   Ea(i) = abs(xnew-xold1);
   if (abs(xnew-xold1)/xnew)<=tolerance
       break;
   end
   xold0=xold1;
   xold1=xnew;
end    
iteration_no = i;
iteration = 1:i;
Xi = Xiold1;
XiPlusOne = Xinew;
XiMinusOne = Xiold0;
AbsErr = Ea;
excution_time = toc;
end

