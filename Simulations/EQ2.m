function [xdot] = EQ2(x,y,z,d)
xdot = d*y-x*z;