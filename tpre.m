function [ e ] = tpre( tv,a )
%tpre calculates the true percent relative error
%   Detailed explanation goes here
e = abs((tv-a)/tv);
return
end

