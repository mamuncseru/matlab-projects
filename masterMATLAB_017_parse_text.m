%% Assignment
% parse text according to spaces and remove 4-letter words.

%% Bonus
% Identify text patterns and replace with other patterns 
% of different length

%% Skills
% regexp, cellfun, strfind, concatenate

%% 

wholetext = 'Hello my name is Mamun and I like purple.';

% separate into a cell array based on spaces
wordsep = regexp(wholetext,' ' , 'split');

% remove any words with exactly 4 characters
numchars = cellfun(@length, wordsep);
words2keep = numchars ~= 4;
wordsep2 = wordsep(words2keep);

% replace 'Mamun' with your name and 'purple' with your favourite color
targname = 'Mamun';
targcolor = 'purple';

namestart = strfind(wholetext, targname);
colorstart = strfind(wholetext, targcolor);

newtext = [ wholetext(1:namestart-1), 'Khalid', wholetext(namestart+length(targname):colorstart-1), ...
    'green', wholetext(colorstart+length(targcolor):end) ];
