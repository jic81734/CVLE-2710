function [ vel ] = rocket_velocity( t )
%Function that defines the velocity of a multistage rocket
%   Detailed explanation goes here
vel = 0;
if((t>0 && t<10) || t==0  || t==10)
    vel = 11*t.^2 -5*t;
    disp('t is between 0 and 10!');
    return
end
if((t>10 && t<20) || t==20)
    vel = 1100-5*t;
    disp('t is between 10 and 20!');
    return
end
if((t>20 && t<30) || t==30)
    vel = 50*t+2*(t-20).^2;
    disp('t is between 20 and 30');
    return
end

if(t>30)
    vel = 1520*exp(-0.2*(t-30));
    disp('t is greater than 30');
    return
end
disp('t is negative!')
return
end

