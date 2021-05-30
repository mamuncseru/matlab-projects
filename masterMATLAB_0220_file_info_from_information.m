%% Assignment
% Get nonselective and selective folder queries to identify subfolders and
% find filenames containing the pattern "variable."

%% Bonus
% Extract the length of all filenames (number of characters).

%% Skills
% dir, cellfun

%%

% get information about all files/folders
everything = dir;

% names of all folders
foldernames = {everything([everything.isdir]).name};

% bonus: filename lengths
filename_lengths = cellfun(@length, foldernames);

% use selective query to extract filenames with "variab"
something = dir('*variab*');