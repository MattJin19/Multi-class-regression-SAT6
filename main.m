clear;
close all;
clc;
load('new_test_label');
load('new_train_label');

[X_train, y_train] = load_NEWSAT6('\path to train csv',new_train_label);
learning_rate = 0.00000001;
num_iter = 1000;
W = train(X_train, y_train, num_iter, learning_rate);

y_pred = predict(W, X_train);
fprintf('The training accuracy is %f\n', mean(y_pred == y_train))

[X_test, y_test] = load_NEWSAT6('\path to test csv',new_test_label);
y_pred = predict(W, X_test);
fprintf('The test accuracy is %f\n', mean(y_pred == y_test))
