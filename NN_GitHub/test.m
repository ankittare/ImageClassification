xTrain = [];
yTrain = [];
load small_data_batch_1
xTrain = [xTrain;extract_feature(double(data))];
yTrain = [yTrain;double(labels)];
load small_data_batch_2
xTrain = [xTrain;extract_feature(double(data))];
yTrain = [yTrain;double(labels)];
load small_data_batch_3
xTrain = [xTrain;extract_feature(double(data))];
yTrain = [yTrain;double(labels)];
load small_data_batch_4
xTrain = [xTrain;extract_feature(double(data))];
yTrain = [yTrain;double(labels)];

load small_data_batch_5
xTest = extract_feature(double(data));
yTest = double(labels);

%load logistic_ecoli.mat
[sample,feature] = size(xTrain);
nIter = 1000;
num_hu = 30;
stepsize = 0.001;
[w1,w2] = NN_train(xTrain,yTrain,nIter,num_hu,stepsize);
[prediction,o] = NN_test(xTest,w1,w2);

sum(yTest == prediction)/length(yTest)
