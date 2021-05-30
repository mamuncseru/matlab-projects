%% Assignment
% Use Gauss' date formula to identify the day of 1 january (e.g., Monday,
% Wednesday...) of any year. Use switch-case to convert the number 0-6 into
% a date, e.g. 0=Sunday.

%% Bonus
% Use appropriate grammer for past tense vs future tense. Solve the problem
% without switch!

%% Skills 
% mod, switch, fprintf, clock

%%
% "A" is the year
A = 2018;

% here's the formula
day1Jan = mod(1 + 5 * mod(A-1,4) + 4 * mod(A-1,100) + 6 * mod(A-1,400),7);

% % match that with the correct string
% switch day1Jan
%     case 0
%         day = 'Sunday';
%     case 1
%         day = 'Monday';
%     case 2
%         day = 'Tuesday';
%     case 3
%         day = 'Wednesday';
%     case 4
%         day = 'Thursday';
%     case 5
%         day = 'Friday';
%     case 6
%         day = 'Saturday';
% end

% find this year
thisyear = clock;
thisyear = thisyear(1);
% 
% % print the information using appropriate grammer!
% if A <= thisyear
%     fprintf(' 1 January %g was a %s\n', A, day);
% else
%     fprintf(' 1 January %g will be a %s\n', A, day);
% end
% bonus: avoid the switch case!

week = {'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'};

day_1 = week(day1Jan+1);


% print the information using appropriate grammer!
if A <= thisyear
    fprintf(' 1 January %g was a %s\n', A, char(day_1));
else
    fprintf(' 1 January %g will be a %s\n', A, char(day_1));
end

