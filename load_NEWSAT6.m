function [X_data, y_data] = load_NEWSAT6(datafile,label)
% Load New SAT-6
% X_data: N by 23 matrix
% y_data: N by  1 matrix
data = csvread(datafile);
[~,label1] = max(label);
X_data = append_bias(data);
y_data = label1';
end

function X_new = append_bias(X_old)
X_new = [ones(size(X_old,1),1) X_old];
end