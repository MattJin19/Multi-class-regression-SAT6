function W = train(X_train, y_train, num_iter, lr)
% Train the multiclass softmax classifier
% X_train: N by 23 matrix
% y_train: N by 1 matrix
% num_iter: number of iterations
% lr: learning rate
% W: 23 by 6 matrix
D = size(X_train, 2); % Number of features
C = 6; % Number of classes
W = zeros(D, C);
for i = 1: num_iter
    grad = gradient_descent(W, X_train, y_train);
    W = W - lr * grad;
end
end

function grad = gradient_descent(W, X, y)
% W: 23 by 6 matrix
% X: N by 23 matrix
% y: N by 1 matrix
% grad: gradient of W, 23 by 6 matrix
sm = softmax(X,W);
grad = zeros(23,6);
for i = 1: 6
    temp = (i==y);
    grad(:,i) = X'*(1./sum(sm./sm(:,i),2)-temp);
end
end

