function [t] = naiveBayesClassify(xTest, M, V, p)   
    [sample,feature] = size(xTest);
    class = length(p);
    t = zeros(sample,1);
    for j = 1:sample
        y = log(p);
        x = xTest(j,:)';
        for k = 1:class
            mk = M(:,k);
            vk = V(:,k);
            prob = 1./sqrt(2*pi*vk).*exp(-0.5*((x-mk)./vk.^(1/2)).^2);%normpdf
            y(k) = y(k) + sum(log(prob));    
        end
        i = find(y==max(y));
        t(j) = i(1)-1;
    end 
end
