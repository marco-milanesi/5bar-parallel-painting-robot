function h = plotAngleArc(centre,radius,span,style,fig)
figure(fig);
theta = linspace(span(1),span(2),100);
rho = ones(1,100) * radius;
[x,y] = pol2cart(theta,rho);
x = x + centre(1);
y = y + centre(2);
hold on 
h = plot(x,y,style);

end

