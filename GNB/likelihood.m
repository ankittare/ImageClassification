function [M, V] = likelihood(xTrain, yTrain)
   classes = unique(yTrain);
   
   c = length(classes);
   [n,m] = size(xTrain);
   M = zeros(m,c);
   V = zeros(m,c);
   for i=1:m
       for k=1:c
           yk = classes(k);
           xi = xTrain(:,i);
           sy = (yTrain == yk);
           M(i,k) = 1/sum(sy)* sum(xi.*sy);
           V(i,k) = 1/sum(sy)* sum(((xi-M(i,k)).^2).*sy);
       end
   end
end
