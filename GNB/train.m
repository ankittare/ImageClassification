function Model = train(X,Y)
%GNB_train
feat = extract_feature(X);

p = prior(Y);
[M,V] = likelihood(feat, Y);
Model = struct('mean',M,'variance',V,'prior',p);
end

