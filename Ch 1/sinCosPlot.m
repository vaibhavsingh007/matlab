% Create the x-axis
x = 0:pi/30:2*pi;

% Make a vector for 2sin(x/2)
y1 = 2*sin(x./2);

% Plot 2sin(x/2) as a solid line in red
plot(x, y1, 'r');

% Make a vector for cos(2x)
y2 = cos(x.*2);

% Use hold on to add a second plot to the graph
hold on

% Plot cos(2x)
plot(x,y2,'+')

% Activate a grid 
grid on

% Create a legend
legend({'2sin(0.5x)','cos(2x)'})

% Add x and y labels
xlabel('x')
ylabel('2sin(0.5x) , cos(2x)')

% Add a title
title('This is my second MSUM plot')