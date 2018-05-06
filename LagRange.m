function [f, results] = Untitled( order, points, values, queries )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms x
f(x)=0*x;
syms x
temp(x)=0*x;
numerator(x)=0*x;

for i = 1:order+1
    temp(x) = 1;
    numerator(x) = 0 * x;
    demorator = 1;
    for j = 1:order+1
       if i == j
         continue;
       end
       demorator = demorator * (points{i} - points{j});
       temp(x) = temp * (x - points{j});
       
     end
     f(x) = f + (temp / demorator)*values(i);
 
end

for i=1:length(queries)
results(i) = vpa(f(queries(i)))
end


end

