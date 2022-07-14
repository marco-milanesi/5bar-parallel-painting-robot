function t = time_necessary(S,v)
t=0;
for i=1:size(S,1)-1
    ds = norm(S(i,:)-S(i+1,:));
    t=t+ds/v;
end

end

