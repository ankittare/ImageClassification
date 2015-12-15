function [cls,o] = NN_test(xTest,w1,w2)
[sample,feature] = size(xTest);
cls = zeros(sample,1);
for n = 1:sample
    x = xTest(n,:);
    h = 1./(1+exp(-x*w1));
    o = 1./(1+exp(-h*w2));
    num_cls = length(o);
    max_o = -inf;
    for i = 1:num_cls
        if  o(i)>max_o
            max_o = o(i);
            cls(n) = i-1;
        end
    end
end
end