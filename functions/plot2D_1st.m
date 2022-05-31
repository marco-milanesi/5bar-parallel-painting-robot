function [config, theta] = plot2D_1st(Q,L,fig,x,y)
figure(fig)

h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);

% Link blu
x_c = 0;
y_c = 0;

x_a = l1*cos(Q(1));
y_a = l1*sin(Q(1));

theta = atan2(y-y_a,x-x_a);

x_e = l1*cos(Q(1)) + l2*cos(theta);
y_e = l1*sin(Q(1)) + l2*sin(theta);

hold on
config = plot([x_c x_a x_e],[y_c y_a y_e], 'LineWidth',2,'color','b'); %manipulator

end

