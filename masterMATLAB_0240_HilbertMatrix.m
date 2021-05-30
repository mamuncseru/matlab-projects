%% Assignment
% Use for-loops to create an MxM Hilbert matrix.

%% Bonus
% In the same for-loop, create a checkerboard matrix.

%% Skills
% zeros, for, imagesc

%%

% list dimensions
m = 5;

% initialize variables whenever possible!
hilmat   =  zeros(m);
checkmat = zeros(m);

% now for the loops:
for i=1:m
    for j=1:m
        
        % denominator
        denom = i + j - 1;
        
        % and invert to find this element
        hilmat(i, j) = 1 / denom;
        
        % bonus: checkerboard
        checkmat(i, j) = (-1)^denom;
    end
end

disp(hilmat)
disp(checkmat)

% let's see what they look like
figure(1), clf
subplot(121)
imagesc(hilmat)
axis square, title('Hilbert matrix')
set(gca, 'xtick', [], 'ytick', [])

subplot(122)
imagesc(checkmat)
axis square, title('checkerboard matrix')
set(gca, 'xtick', [], 'ytick', [])

