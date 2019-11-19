function softmax_scores = softmax(X, W)
score_p = X * W;
score = subtract_max_score(score_p);
score = exp(score);
score_sum = sum(score,2);
score_sum2 = repmat(score_sum,[1,6]);
softmax_scores = score./score_sum2;
end

function scores_out = subtract_max_score(scores_in)
t = max(scores_in,[],2);
scores = repmat(t,[1,6]);
scores_out = scores_in - scores;
end