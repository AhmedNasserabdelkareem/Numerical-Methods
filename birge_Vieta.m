function [ iteration_no,iterations,excution_time,X,A,B,C,AbsErr ] = birge_Vieta( p0,str,upper,tolerance )
%birge_Vieta finds a root for the given function.
%   Using Birge Vieta method this function will find a root for the given
%   function.
tic;
S = vectorize(char(str));
fn = str2func(['@(x) ' S]);
fntemp = fn;
syms x;
degree = 0;
while fntemp ~= 0
   fntemp = diff(fntemp,x);
   degree = degree+1;
end
P = inf(upper,1);
Ea = inf(upper,1);
b = inf(upper,degree);
c = inf(upper,degree-1);
P(1) = p0;
a = coeffs(fn,'All');
for j =1:upper
     b(j,1)=a(1);
     c(j,1)=a(1);
    for i = 1:(degree-1)
        b(j,i+1)=P(j)*b(i)+a(i+1);
    end 
    for i = 1:(degree-2)
        c(j,i+1)=P(j)*c(i)+b(i+1);
    end
    P(j+1)=P(j)-(b(j,4)/c(j,3));
    if(j>1)
        Ea(j+1) = P(j+1)-P(j);
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
excution_time = toc;
end

