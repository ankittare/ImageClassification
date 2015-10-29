function [t] = naiveBayesClassify(xTest, Mean, Var, p)
M=Mean';
V=Var';
for i = 1:size(xTest,1)
    for j = 1:size(p,1)
        product = normpdf(xTest(i,:),M(j,:),sqrt(V(j,:)));
        posterior(j) = p(j) * prod(product);
    end
    [~, prediction] = max(posterior);
    y(i) = prediction;
end
t=y';
end
