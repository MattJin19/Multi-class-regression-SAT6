clear;
close all;
clc;
load('new_test_label');
load('new_train_label');

[X_train, y_train] = load_NEWSAT6('C:\Users\MattJin\Desktop\Image and Video Processing LAB\train_feature_vectors_sat_6_w_28_s_6.csv',new_train_label);
learning_rate = 0.00000001;
num_iter = 1000;
W = train(X_train, y_train, num_iter, learning_rate);

y_pred = predict(W, X_train);
fprintf('The training accuracy is %f\n', mean(y_pred == y_train))

[X_test, y_test] = load_NEWSAT6('C:\Users\MattJin\Desktop\Image and Video Processing LAB\test_feature_vectors_sat_6_w_28_s_6.csv',new_test_label);
y_pred = predict(W, X_test);
fprintf('The test accuracy is %f\n', mean(y_pred == y_test))