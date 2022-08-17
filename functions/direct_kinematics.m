function S = direct_kinematics(Q,L,last_guess)

% Definizione variabili simboliche
h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);
alfa=Q(1);
beta=Q(2);
rho=Q(3);

options = optimset('Display','off');
f=@(x,y) (x-l1*cos(alfa)).^2+(y-l1*sin(alfa)).^2-l2.^2;
g=@(x,y) (x-(l0+l1*cos(beta))).^2+(y-l1*sin(beta)).^2-l2.^2;
F = @(x) [f(x(1),x(2)); g(x(1),x(2))];
[zm, ~] = fsolve(F,[last_guess(1);last_guess(2)],options);

S(1) = zm(1);
S(2) = zm(2);
S(3) = rho;


end

