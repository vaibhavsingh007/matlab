% Draw a parabola graph y = mx^2 + c
% generate a timeline - DO NOT change this line
x = -2:0.1:2;

% calculate y=4x^2+2
y = 4*(x.^2) + 2;

% generate a plot with the stem command
stem(y)

% Add a title - DO NOT change this line
title('This is my first MSUM plot')