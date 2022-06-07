function [s,ss,sss] = costant_velocity(t,T,S0,ds)
    sss = ds/(T*T)*0;
    ss = ds/T;
    s = ds*(t/T)+S0;
end

