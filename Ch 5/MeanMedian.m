% --- Do not edit ---
clc
StudRes = [15 82 89 90 98];
% y = 0:100;
% --- Calculate the mean and the median ---
meanStudRes = sum(StudRes)/length(StudRes);
medianStudRes = 0;
sorted = sort(StudRes);
len = length(sorted);

if mod(len, 2) == 0
    medianStudRes = (sorted(len/2) + sorted(len/2 + 1))/2;
else
    medianStudRes = sorted(ceil(len/2));
end

% Plot StudRes as red o's and add the mean and 
% the median as a line to the plot
hold on;
grid on;
plot(1:len, StudRes, 'or');
plot([1 len], [meanStudRes meanStudRes], 'b',...
    [1 len], [medianStudRes medianStudRes], 'g');
legend('Student Results', 'mean', 'median', 'Location', 'southeast');