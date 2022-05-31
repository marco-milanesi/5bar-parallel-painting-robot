function config = Plot3D_3rd(L,fig,x,y,z)

figure(fig)
h=L(1);

x1 = x;
y1 = y;
z1 = h;

x2 = x;
y2 = y;
z2 = z;

hold on
config = plot3([x1 x2],[y1 y2],[z1 z2], 'LineWidth',2,'color','red'); %manipulator

