function Jp_s = Jp_s(Q,Qp,V,L)
alfa=Q(1);
beta=Q(2);

alfa_p = Qp(1);
beta_p = Qp(2);

h=L(1);
l0=L(2);
l1=L(3);
l2=L(4);

Jp_s = zeros(2,2);
Jp_s(1,1) = 2*(V(1)+l1*sin(alfa)*alfa_p);         Jp_s(1,2) = 2*(V(2)-l1*cos(alfa)*alfa_p);
Jp_s(2,1) = 2*(V(1)+l1*sin(beta)*beta_p);         Jp_s(2,2) = 2*(V(2)-l1*cos(beta)*beta_p);


end

