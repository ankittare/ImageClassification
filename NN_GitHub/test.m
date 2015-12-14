%load small_data_batch_1
%xTrain = extract_feature(double(data));
%yTrain = double(labels);
%load small_data_batch_5
%xTest = extract_feature(double(data));
%yTest = double(labels);

load logistic_ecoli.mat
[sample,feature] = size(xTrain);
nIter = 1000;
%w = logisticRegressionWeights(xTrain, yTrain, w0, nIter);
%prediction = logisticRegressionClassify(xTest, w);
[w1,w2] = NN_train(xTrain,yTrain,nIter);
[prediction,o] = NN_test(xTest,w1,w2);

sum(yTest == prediction)/length(yTest)
