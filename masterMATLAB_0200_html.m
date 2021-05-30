%% Assignment
% Generate a table of letters and numbers, and print them into an html
% table that can be read in a web browser.

%% Skills
% char, randn, randi, disp, for, fprintf, num2str

%%
% generate some random numbers and characters
N = 20; % 20 number/character pairs
numbers = randn(N, 1);
tmptext = char( 50 + randi(70, N, 1) );


% clear the screen to facilate copy/paste
clc

% html code for header
disp('<htm>')
disp('<body>')

% html code for table
disp('<table>')

% loop over elements and print
for ri=1:N
    disp([ ' <tr><td> ', num2str(numbers(ri)), '</td><td>', (tmptext(ri)), '</td></tr>' ])       

end

% close html
fprintf('</table>\n</body>\n</html>\n\n\n')

%%
