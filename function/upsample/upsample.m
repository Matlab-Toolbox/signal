function [ up_data ] = upsample( data, R )
%UPSAMPLE 1 or 2 Dimensional matrix, inserting R-1 0's
%   Create intial Array of zeros and re-map original data in to the new
%   matrix

[y, x] = size(data);

%% Pre-size output array
if y > 1
    up_data = zeros(y*R, x  );
else
    up_data = zeros(y,   x*R);
end

% Determine which direction to upsample  
if y > 1
  %% Insert 0's into columns 
  up_data(1:R:R*y,:) = data(:,:);
else
  %% Insert 0's into Row
  up_data(1:R:R*x)  = data;
end

end

