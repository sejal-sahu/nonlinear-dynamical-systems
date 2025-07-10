function [xdot] = EQ3(x,y,z,b,f,g)
xdot = -b*z + f*x*x + g*x*y;