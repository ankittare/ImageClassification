function Y = classify(Model,X)
%GNB_classify
feat = extract_feature(X);
Y = naiveBayesClassify(feat,Model.mean,Model.variance,Model.prior);    
end

