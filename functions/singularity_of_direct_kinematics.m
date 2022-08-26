function S = singularity_of_direct_kinematics(Q,L,last_guess)

% Definizione variabili simboliche
l0=L(1);
l1=L(2);
l2=L(3);
l3=L(4);
l4=L(5);

alfa=Q(1);
beta=Q(2);
rho=Q(3);

options = optimset('Display','off');
f=@(x,y) (x-l1*cos(alfa)).^2+(y-l1*sin(alfa)).^2-l3.^2;
g=@(x,y) (x-(l0+l2*cos(beta))).^2+(y-l2*sin(beta)).^2-l4.^2;
F = @(x) [f(x(1),x(2)); g(x(1),x(2))];
[zm, ~] = fsolve(F,[last_guess(1);last_guess(2)],options);

S(1) = zm(1);
S(2) = zm(2);
S(3) = rho;


end

