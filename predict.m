function y_pred = predict(W, X)
S = X * W;
[~,y_pred] = max(S,[],2);
end