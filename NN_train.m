function [w1,w2] = NN_train(xTrain,yTrain,nIter)
num_cls = 2;
num_hu = 3;
h = zeros(1,num_hu);
o = zeros(1,num_cls);
[sample,feature] = size(xTrain);
w1 = rand(feature,num_hu); %(i,j) = w_ij
w2 = rand(num_hu,num_cls);
for n = 1:nIter
    for s = 1:sample
        x = xTrain(s,:);
        for i = 1:num_hu
            h(i) = 1/(1+exp(x*w1(:,i)));
        end
        for i = 1:num_cls
            o(i) = 1/(1+exp(h*w2(:,i)));
        end
        t = zeros(1,num_cls); 
        t(yTrain(s)) = 1; %target output
        [w1,w2] = backpropagation(x,h,o,t,w1,w2);
    end
end
end

