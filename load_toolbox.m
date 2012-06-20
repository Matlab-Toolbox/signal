function load_toolbox
%% Script to load functions ontopath if they are missing
%  onlyt loads functions that the user does not already have
%  This assumes that the Mathworks supplied functions are Optimal and are
%  preffered over these versions.

this_folder = fileparts( mfilename('fullpath') );

%% If downsample not available load function
if exist('downsample', 'file') ~= 2
    addpath([this_folder, '/function/downsample']);
end

%% If upsample not available load function
if exist('upsample', 'file') ~= 2
    addpath([this_folder, '/function/upsample']);
end

%% Add all toplevel functions
addpath([this_folder, '/function']);

end