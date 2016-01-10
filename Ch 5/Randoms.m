rng('shuffle')

x = randi(100, 1, 100);
y = randperm(100);

nUniqueX = length(unique(x))
nUniqueY = length(unique(y))

% Add your own code to help you answer the quiz questions.
mean(x), mean(y)