rF=[20;30;40;50];
rB=[10;15;20;25;30;35;40];
lrF = length(rF);
lrB = length(rB);
res = zeros(lrF*lrB, 3);
index = 0;

for i=1:lrF
    for j = 1:lrB
        index = index + 1;
        res(index, 1) = rF(i) / rB(j);
        res(index, 2) = rF(i);
        res(index, 3) = rB(j);
    end
end

res = sort(res);
res(20,1)   % Asked in the Q.
        
        