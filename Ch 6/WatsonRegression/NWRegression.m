%function NWRegression 
%returns RegPoint for:
%x coordinate given by testpoint
%y coordinate by nadaraya watson Regression with gaussian Kernel
%3 column weight of gauss function given by distancen 

function[RegValue]= NWRegression(training,test,h)


%gaussian weight for absolute distance
training(:,3)=normpdf(abs(test(1)-training(:,1)),0,h);

%coordinates for RegPoint
RegValue=(sum(training(:,3).*training(:,2)))/sum(training(:,3));