%function nwclass gives classes +-1 a value depending on distance
%value as given by normal distribution depending on bandwidth h and
%distance

% calculate the Nadaraya-Watson-Classification value for a given test sample
% Tip: use the mvnpdf-function
function [value]= NWClassification(training,test,h)

%gaussian weight for absolute distance
dist = [abs(test(1)-training(:,2)) abs(test(2)-training(:,3))];
new_h = zeros(1,2);
new_h(:,1) = h;
new_h(:,2) = h;
training(:,3) = mvnpdf(dist,0,new_h);

%coordinates for RegPoint
s = (sum(training(:,3).*training(:,2)))/sum(training(:,3));

if s > 0
    value = 1;
else
    value = -1;
end