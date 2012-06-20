function [ down_data ] = downsample( data, R )
%DOWNSAMPLE 1 or 2 Dimensional matrix, removing R-1 samples
% Create new array only taking every R'th point.

[y, x] = size(data);

%% Determine which direction to downsample
if y > 1
    %% Resample columns 
    down_data(1:1:floor(y/R),:) = data(1:R:y, :);
else
    %% Resample Row
    down_data(1:1:floor(x/R))   = data(1:R:x);
end

end

