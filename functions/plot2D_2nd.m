function [config, gamma] = plot2D_2nd(Q,L,fig,x,y)
figure(fig)

h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);


% Link verde
x_d = l0;
y_d = 0;

x_b = l0 + l1*cos(Q(2));
y_b = l1*sin(Q(2));


gamma = atan2(y-y_b,x-x_b);
x_e = l0 + l1*cos(Q(2)) + l2*cos(gamma);
y_e = l1*sin(Q(2)) + l2*sin(gamma);

% x_e = x;
% y_e =y;

hold on
config = plot([x_d x_b x_e],[y_d y_b y_e], 'LineWidth',2,'color','g'); %manipulator

end

