load('XYcircle.mat')
x=XYcircle(:,1);
y=XYcircle(:,2);
plot(x,y,'o')
axis equal
dmin=1E500;
% take a look and adjust ranges for x, y und r
for x0=2.5:0.1:3.5
    for y0=3.5:0.1:4.5
        for r=1.5:0.1:3
            d=0;
            for number=1:1:length(x)
                d=d+(r-sqrt((x(number)-x0)^2+(y(number)-y0)^2))^2;
            end
            if d<dmin
                dmin=d;
                x0best=x0;
                y0best=y0;
                rbest=r;
            end
        end
    end
end
hold 'on'
for i=1:100
    x_est(i)=x0best+rbest*cos(2*pi*i/100);
    y_est(i)=y0best+rbest*sin(2*pi*i/100);
end
plot(x_est,y_est,'-r')