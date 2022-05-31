function Jp_q = Jp_q(S,Q,Qp,V,L)
alfa=Q(1);
beta=Q(2);
x=S(1);
y=S(2);

alfa_p = Qp(1);
beta_p = Qp(2);

h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);


Jp_q = zeros(2,2);
Jp_q(1,1) = 2*l1*sin(alfa)*(V(1)+l1*sin(alfa)*alfa_p)-2*l1*cos(alfa)*(V(2)-l1*cos(alfa)*alfa_p)+2*l1*cos(alfa)*(x-l1*cos(alfa))*alfa_p+2*l1*sin(alfa)*(y-l1*sin(alfa))*alfa_p;
Jp_q(2,2) = 2*l1*sin(beta)*(V(1)+l1*sin(beta)*beta_p)-2*l1*cos(beta)*(V(2)-l1*cos(beta)*beta_p)+2*l1*sin(beta)*(y-l1*sin(beta))*beta_p-2*l1*cos(beta)*(l0-x+l1*cos(beta))*beta_p;

end

