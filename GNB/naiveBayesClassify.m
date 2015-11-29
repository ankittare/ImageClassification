function [t] = naiveBayesClassify(xTest, M, V, p)   
    [sample,feature] = size(xTest);
    class = length(p);
    t = zeros(sample,1);
    for j = 1:sample
        y = log(p);
        x = xTest(j,:);
        for k = 1:class
            mk = M(:,k);
            vk = V(:,k).^(1/2);
            y(k) = y(k) + logProd(log(normpdf(x',mk,vk)));    
        end
        i = find(y==max(y));
        t(j) = i(1)-1;
    end 
end
