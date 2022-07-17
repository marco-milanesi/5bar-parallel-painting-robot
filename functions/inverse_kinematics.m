function Q = inverse_kinematics(S,L,last_guess)

Q=zeros(2,1);
x=S(1);
y=S(2);
z=S(3);

h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);


options = optimset('Display','off');
f=@(alfa,beta) (x-l1*cos(alfa)).^2+(y-l1*sin(alfa)).^2-l2.^2;
g=@(alfa,beta) (x-(l0+l1*cos(beta))).^2+(y-l1*sin(beta)).^2-l2.^2;
F = @(x) [f(x(1),x(2)); g(x(1),x(2))];
[zm, ~] = fsolve(F,[last_guess(1);last_guess(2)],options);


Q(1) = zm(1);
Q(2) = zm(2);
Q(3) = z;

end

