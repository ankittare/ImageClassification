function f = extract_hog(data)
[images,col] = size(data);
%f = zeros(images,496);
f = [];
for i = 1:images
    row = data(i,:);
    image = row_to_image(row);
    feat = extract_hog(image); 
    %f(i,:) = feat';
    f = [f;feat'];
end

end

