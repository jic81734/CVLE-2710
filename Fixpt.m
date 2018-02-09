function [ xr,iter,ea ] = Fixpt( x0,es,imax,g)
%Fixpt solves the Fixed Point Iteration of a given function
%   Google it...
xr=x0;
iter = 0;
while (1)
    xrold = xr;
    xr = g(xrold);
    iter = iter+1;
    if xr~=0
        ea = abs((xr-xrold)/xr)*100;
    end
    if (ea<es || iter>=imax)
        break
    end
end
