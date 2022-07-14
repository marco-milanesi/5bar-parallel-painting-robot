function [config, theta] = Plot3D_1st(Q,L,fig,x,y)

figure(fig)
h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);

x1 = 0;
y1 = 0;
z1 = 0;

x2 = 0;
y2 = 0;
z2 = h;

x3 = l1*cos(Q(1));
y3 = l1*sin(Q(1));
z3 = h;

theta = atan2(y-y3,x-x3);

x4 = l1*cos(Q(1)) + l2*cos(theta);
y4 = l1*sin(Q(1)) + l2*sin(theta);
z4 = h;

hold on
config = plot3([x1 x2 x3 x4],[y1 y2 y3 y4],[z1 z2 z3 z4], 'LineWidth',2,'color','g'); %manipulator

