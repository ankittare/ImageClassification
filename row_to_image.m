function image = row_to_image(row)
red = reshape(row(1:1024),32,32)';
green = reshape(row(1025:2048),32,32)';
blue = reshape(row(2049:3072),32,32)';
image = cat(3,red,green,blue);
end

