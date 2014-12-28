load dataset.mat

X = data(:, 1:45);
y = data(:, 46);

# multiple linear regression

models = stepwise(X, y); 
