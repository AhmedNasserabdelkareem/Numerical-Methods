function [f, g, xNew, error, excution_time] = Untitled(equation ,maxIteration, tolerance, initialPoint )
tic;
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
    error(1) = abs((xNew(1) - xOld));
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
    
        error(index) = abs((xNew(index) - xOld))
    
    if abs(xNew(index)) < 10^-200 | abs(xNew(index)) > 10^200
        break;
    end
    
    
    iter = iter + 1;
    index = index + 1;
end
    excution_time = toc;

end





