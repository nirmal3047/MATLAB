% MATLAB code to profuce water waves
clc; clear all;

a = 8;
u = 0.05;
[x,y] = meshgrid(-a:0.5:a);

z1 = 0*x+0*y+6;
c1 = 1;
surf(x,y,z1,c1); hold on

for i=0:200
    r = sqrt(x.*x+y.*y);
    z = cos(pi/2*(r-u*i));
    c2 = r;
    S = surf(x,y,z,c2);
    S.EdgeColor = 'none';
    pause(0.05);
    delete(S);
end