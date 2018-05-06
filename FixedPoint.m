function [f, g, xNew, error] = Untitled(equation ,maxIteration, tolerance, initialPoint )

S = vectorize(char(equation)); %str = x^2-6*x
f = str2func(['@(x) ' S]);
syms x
g(x) = f+x;
xOld = initialPoint;
try
    xNew(1) = vpa(g(xOld));
catch
    return;
end

if (xNew ~= 0)
    error(1) = abs((xNew(1) - xOld) / xNew(1)) * 100
else
    error(1) = 100000000;
end
iter = 1;
iter_max = maxIteration;
index = 2;
while error(index - 1) > tolerance && iter < iter_max
    xOld = xNew(index - 1);
    
    try
        xNew(index) = vpa(g(xOld));
    catch
        return;
    end
    
    if xNew(index) ~= 0
        error(index) = abs((xNew(index) - xOld) / xNew(index)) * 100
    else
        error(index) = 100000000;
    end
    
    if abs(xNew(index)) < 10^-200 | abs(xNew(index)) > 10^200
        break;
    end
    
    
    iter = iter + 1;
    index = index + 1;
end

end





