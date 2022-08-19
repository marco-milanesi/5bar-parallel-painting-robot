function Fq = torque_evaluation(q,qp,qpp,J,dT,L,G,M,Fse,n,task)

Je_0 = Jacobian_Ext(q(1,1:2),L,G,J);

switch task
    case {1,3}
        for i = 2:n
            if i==2
                Je=Jacobian_Ext(q(i,1:2),L,G,J);
                Jep = (Je-Je_0)./dT;
            else
                Je_0=Jacobian_Ext(q(i-1,1:2),L,G,J);
                Je=Jacobian_Ext(q(i,1:2),L,G,J);
                Jep = (Je-Je_0)./dT;
            end
            Fq(i,:) = (Je'*M*Je)*qpp(i,1:2)' + (Je'*M*Jep)*qp(i,1:2)'-transpose(Je)*Fse;
        end
    case 2
        for i = 2:length(dT)
            if i==2
                Je=Jacobian_Ext(q(i,1:2),L,G,J);
                Jep = (Je-Je_0)./dT(i-1);
            else
                Je_0=Jacobian_Ext(q(i-1,1:2),L,G,J);
                Je=Jacobian_Ext(q(i,1:2),L,G,J);
                Jep = (Je-Je_0)./dT(i-1);
            end

            Fq(i,:) = (Je'*M*Je)*qpp(i,1:2)' + (Je'*M*Jep)*qp(i,1:2)'-transpose(Je)*Fse;
        end
end

