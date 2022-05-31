function [s,ss,sss] = cycloidal(t,T,S0,ds)
    sss = ds/(T*T)*2*pi*sin(2*pi*(t/T));
    ss = ds/T*(1-cos(2*pi*(t/T)));
    s = ds*(t/T-(1/(2*pi))*sin(2*pi*(t/T))) +S0;
end

