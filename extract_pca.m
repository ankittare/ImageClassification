function f = extract_pca(data)
[images,col] = size(data);
f = zeros(images,96);
for i = 1:images
    row = data(i,:);
    image = row_to_image(row);
    red = eig(cov(image(:,:,1)));
    green = eig(cov(image(:,:,2)));
    blue = eig(cov(image(:,:,3)));
    f(i,:) = [red',green',blue'];
end
end

