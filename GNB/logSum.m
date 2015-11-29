function [ls] = logSum(x)
  pi = max(x);
  ls = pi + log(sum(exp(x-pi)));
end
