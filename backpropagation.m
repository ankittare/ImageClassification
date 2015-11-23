function [w1,w2] = backpropagation(x,h,o,t,w1,w2)
stepsize = 0.1;
feature = length(x);
num_cls = length(o);
num_hu = length(h);
d_o = zeros(1,num_cls);
d_h = zeros(1,num_hu);
for i = 1:num_cls
    d_o(i) = o(1)*(1-o(1))*(t(i)-o(i));
end
for i = num_hu
    d_h(i) = h(i)*(1-h(i))*(w2(i,:)*d_o');
end
for i=1:num_hu
    for j = 1:num_cls
        w2(i,j) = w2(i,j) + stepsize*d_o(j)*h(i);
    end
end
for i = 1:feature
    for j = 1:num_hu
        w1(i,j) = w1(i,j) + stepsize*d_h(j)*x(i);
    end
end
end

