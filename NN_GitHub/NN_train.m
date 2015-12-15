function [w1,w2] = NN_train(xTrain,yTrain,nIter,num_hu,stepsize)
num_cls = length(unique(yTrain));
[sample,feature] = size(xTrain);
b1 = sqrt(6/(feature+num_hu));
b2 = sqrt(6/(num_hu+num_cls));
w1 = (rand(feature,num_hu)-0.5)*2*b1; %(i,j) = w_ij
w2 = (rand(num_hu,num_cls)-0.5)*2*b2;
for n = 1:nIter
    n
    for s = 1:sample
        x = xTrain(s,:);
        h = 1./(1+exp(-x*w1)); %size = 1*num_hu
        o = 1./(1+exp(-h*w2)); %size = 1*num_cls
        t = zeros(1,num_cls); 
        cls = yTrain(s);
        t(cls+1) = 1; %target output; cls starts at 0
        [w1,w2] = backpropagation(x,h,o,t,w1,w2,stepsize);
    end
end
end

