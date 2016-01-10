mu = log(20000);
sd = 1.0;
x = 10:1000:120000;
y = lognpdf(x, mu, sd);

plot(x,y);
set(gca, 'xtick', [0 30000 60000 90000 120000]);
set(gca, 'xticklabel', {'0', '30000', '60000', '90000', '120000'});