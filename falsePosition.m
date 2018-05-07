function [ iter,l,u,r,ea] = falsePosition(func,xl,xu,es,imax)
%using known false position method to find a root inside some interval
%   it is used to find odd number of roots inside some interval
    f = str2func(['@(x)' vectorize(char(func))]);
    iter = (1:imax)';
    l = inf(imax,1);
    u = inf(imax,1);
    r = inf(imax,1);
    ea = inf(imax,1);
      
    if(f(xu)*f(xl))> 0.0
        disp('false-point method : no roots in iterval');
        return
    end
    
    for i = 1:1:imax
        l(i)= xl;
        u(i) = xu;
        r(i) = ((l(i)*f(u(i)))-(u(i)*f(l(i))))/(f(u(i))-f(l(i)));
        if f(r(i)) == 0.0 
            disp('root found');
            break;
        elseif f(r(i)) * f(l(i))  < 0 
            xu = r(i); 
        else 
            xl = r(i);
        end
        if(i > 1)
            ea(i) = abs(((r(i) - r(i-1))/(r(i))));
        end
        if ((i > 1) && (ea(i)< es) )
            disp('method has converged');break;
        end
    end
    
    if(ea(i) > es)
        disp('zero not found for desired tolerance and number of iterations');
    end

    
    

end

