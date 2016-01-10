% For loop example, plotting an animated cosine
x = 0:pi/100:2*pi;
y = cos(x);
plot(x, y, 'YDataSource', 'y');

for i = 1:0.01:5
    y = cos(x.*i);
    refreshdata(h, 'caller');
    drawnow
end