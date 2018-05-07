function [XL,XU,XR,ea,f] = bisection(fx,xl,xu,es,imax)
     
    f = str2func(['@(x)' vectorize(char(fx))]);
        
    if(f(xu)*f(xl)) > 0 
        disp('bisection method : no roots in interval');
        return
    end
    
    for i = 1:1:imax
        XU (i) = xu;
        XL (i) = xl;
        xr = (xl + xu)/2;
        XR (i) = xr;
        %ea = abs((xu-xl)/xl);  
        test = f(xr)*f(xl);
        if (test < 0)
            xu=xr;
        else
            xl=xr;
        end
        if(i == 1) 
            ea(i) = 1000000000;
        else 
            ea(i) = abs((XR(i)-XR(i-1))/XR(i)); 
        end
        if (test == 0)
            ea(i)=0;
        end
        if (ea (i) < es)
            break;
        end
    end
    
    if(ea(length(ea)) > es)
        disp('method can not find the root for specified number of iterabtions ');
    end
    %s=sprintf('\n Root= %f #Iterations = %d \n', xr,i);
    %disp(s);
end

