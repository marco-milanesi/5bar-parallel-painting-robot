function [J, J_s, J_q] = Jacobian(S,Q,L)

h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);

alfa=Q(1);
beta=Q(2);

x=S(1);
y=S(2);

% Link blu
x_c = 0;
y_c = 0;

% Link verde
x_d = l0;
y_d = 0;


J_s = zeros(2,2);
J_s(1,1) = 2*(x-(x_c+l1*cos(alfa)));    J_s(1,2) = 2*(y-(y_c+l1*sin(alfa)));
J_s(2,1) = 2*(x-(x_d+l1*cos(beta)));    J_s(2,2) = 2*(y-(y_d+l1*sin(beta)));
% J_s = 2.*J_s;

J_q = zeros(2,2);
J_q(1,1) = 2*(((x-x_c)*sin(alfa)-(y-y_c)*cos(alfa))*l1);
J_q(2,2) = 2*(((x-x_d)*sin(beta)-(y-y_d)*cos(beta))*l1);%%

% J_q = 2.*J_q;

J = -inv(J_q)*J_s;


end