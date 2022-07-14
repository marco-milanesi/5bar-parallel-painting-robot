function [s,ss,sss] = costant_velocity(t,T,S0,S1,v,ds)
    sss = ds/(T*T)*0;
    ss = v*(S1-S0)/norm(S1-S0);
    s = ds*(t/T)+S0;
end

