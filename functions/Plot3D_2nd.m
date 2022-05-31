function config = Plot3D_2nd(Q,L,fig,x,y)

figure(fig)
h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);


x1 = l0;
y1 = 0;
z1 = 0;

x2 = l0;
y2 = 0;
z2 = h;

x3 = l0+l1*cos(Q(2));
y3 = l1*sin(Q(2));
z3 = h;

gamma = atan2(y-y3,x-x3);

x4 = l0 + l1*cos(Q(2)) + l2*cos(gamma);
y4 = l1*sin(Q(2)) + l2*sin(gamma);
z4 = h;

hold on
config = plot3([x1 x2 x3 x4],[y1 y2 y3 y4],[z1 z2 z3 z4], 'LineWidth',2,'color','b'); %manipulator

