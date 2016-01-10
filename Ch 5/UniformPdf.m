% Create a Uniform PDF function using makedist and pdf

% Create 3 uniform distribution objects with different ranges
pdObjA = makedist('uniform');
pdObjB = makedist('uniform', 'lower', -1, 'upper', 1.5);
pdObjC = makedist('uniform', 'lower', 0.5, 'upper', 3.5);

% Compute the dist. fns. 
x = -2:.1:4;

pdfA = pdf(pdObjA, x);
pdfB = pdf(pdObjB, x);
pdfC = pdf(pdObjC, x);

% Plot the pdfs using stairs (in case of CDFs, use the plot cmd instead).

hold on;
stairs(x, pdfA, 'b', 'LineWidth', 2);
stairs(x, pdfB, 'g', 'LineWidth', 2);
stairs(x, pdfC, 'r', 'LineWidth', 2);

ylim([0 1.1]);
legend('lower=0 upper=1', 'lower=-1 upper=1.5',...
    'lower=0.5 upper=3.5');
hold off;