function [p] = prior(yTrain)
    classes = unique(yTrain);
    p = [];
    for i = 1:length(classes)
        prob = (sum(yTrain == classes(i))/length(yTrain));
        p = [p;prob];
    end
end
