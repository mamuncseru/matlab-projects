%% Assginment
% Use variables and arithmetic to figure out how much money you have each month 
% and per-day for non-essential purchases.
% 
%% Bonus
% Re-compute assuming you spend twice as much during the weakend as during weakdays. 
% Print the information to the command window.
% 
%% Skills
% Basic arithmetic, disp, num2str

%% 

% monthly income (Post-tax)
income = 2500; %in euros

% list monthly expenses
rent  = 1200;
utils = 300; % water, electricity, internet, etc.
car   = 250; % gas and insurance
food  = 300; % assuming 75/week
phone = 50; % gotta have unlimited downloads
retirement = 2500 * 0.1; % you should be invest 10% of your income!

% total monthly expenditure
outflow = rent + utils + car + food + phone + retirement;

% amount letf over for nonessential expenses
nonessentials = income - outflow;

% how much can you spend per day?
perday = nonessentials / 30;

disp([ 'I can spend ', num2str(perday), ' extra each day.'])

% what if you spend twice as much during the weakend as during the weak?
perweek = nonessentials / (30/7);
inThirds = perweek / 3;
disp(['I can spend ' num2str(inThirds*2) ' during the weekend, and ' num2str(inThirds/5) ' each weak day.'])
