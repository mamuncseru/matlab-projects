%% Assignment
% A number iteratively decreases by being multiplied by a random number
% between 0 and 1. A counter tracks the number of iterations until a set
% threshold is reached.

%% Bonus
% Modulate the rate of decreases using fractional exponents. Repeat 100
% iterations and plot the average decay.

%% Skills
% while loop, Poisson process, random numbers, for loop, fractional
% exponents, plotting

%%

% set threshold
thresh = exp(-10);

% number of repetitions
nRep = 100;

% decay process
decayvar = nan(nRep, 1000);

% initialize initial value
[currval, startval] = deal( 10 );


for repi=1:nRep
    
    % reset the current value to be the original value
    currval = startval;
    
    % reset the counter
    counter = 0;
    
    % stay in loop as long as needed
    while currval > thresh

        % increase counter
        counter = counter + 1;

        % update decay variable
        decayvar(repi, counter+1) = currval;

        % decrease target by random fraction ([0 1])
        currval = currval * rand^(1/2);



    end
end

% without the stats toolbox
decayvarAve = zeros(1, size(decayvar, 2));
for i=1:size(decayvar, 2)
    decayvarAve(i) = mean(decayvar( isfinite(decayvar(:, i)), i));
end

% plot the result
figure(1), clf
plot(decayvarAve, 'ks-', 'linew', 2, 'markersize', 15, 'markerfacecolor', 'w')
xlabel('Iterations'), ylabel('value')
title([num2str(counter) ' iterations until threshold' ])







