function [ error,root,fn,fx,iteration_no,iterations,excution_time,X,A,B,C,AbsErr ] = birge_Vieta( p0,str,upper,tolerance )
%birge_Vieta finds a root for the given function.
%   Using Birge Vieta method this function will find a root for the given
%   function.
tic;
S = vectorize(char(str));
fn = str2func(['@(x) ' S]);
fntemp = fn;
error = 0;
syms x;
fx = diff(fn,x);
degree = 0;
while vpa(fntemp) ~= 0
   fntemp = diff(fntemp,x);
   degree = degree+1;
end
P = inf(upper,1);
Ea = inf(upper,1);
b = inf(upper,degree);
c = inf(upper,degree-1);
P(1) = p0;
%syms x;
a = coeffs(fn,x,'All');
for j =1:upper
     b(j,1)=a(1);
     c(j,1)=a(1);
    for i = 1:(degree-1)
        b(j,i+1)=P(j)*b(j,i)+a(i+1);
    end 
    for i = 1:(degree-2)
        c(j,i+1)=P(j)*c(j,i)+b(j,i+1);
    end
    P(j+1)=P(j)-(b(j,4)/c(j,3));
    if c(j,3) == 0
       error = 1;
       break;
    end    
    if(j>1)
        if P(j+1) == 0
        error = 1;
        break;
        end 
        Ea(j+1) = abs((P(j+1)-P(j))/P(j+1));
        if Ea(j+1)<tolerance
          break; 
       end    
    end
end
iteration_no =j;
iterations = 1:j;
X = P;
A = a;
B = b;
C = c;
AbsErr = Ea;
root = P(j);
excution_time = toc;
end

