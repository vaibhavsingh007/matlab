% Calculates the optimal Gear combination for the desired Gear Ratio
% First, use Brute Force to populate all possible combinations in a matrix
combi = [];

for r1 = 5:5:55
    for r2 = 100:5:150
        for r3 = 5:5:55
            for r4 = 100:5:150
                combi = [combi;r1,r2,r3,r4];
            end
        end
    end
end

% Now evaluate the desired ratio for each combination (r1*r3)/(r2*r4)<
% Optimize the code using direct matrix operations (similar to Python)
R = combi(:,1).*combi(:,3)./combi(:,2)./combi(:,4);

% And the desired Gear Ratio is
Rd = 0.02;

% Now, use the following MATLAB feature to yield the combinations
rows = R==Rd;
best_combi = combi(rows, :)    % From combi, select all cols where
%..rows array's index value is 1

