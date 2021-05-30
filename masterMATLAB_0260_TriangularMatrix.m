%% Assignment
% Use for-loops and if-statements to fill the upper-triangular elements of
% an MxM matrix.

%% Bonus
% Populate the lower trangle of the matrix to be the flipped version of the upper-triangle.

%% Skills
% for, zeros, if

%%
% size of the square matrix
m = 70;

% initial matrix 
upper_triangular = zeros(m);
lower_triangular = zeros(m);
full_matrix = zeros(m);
% loop over rows and columns
for i = 1:m
   for j = 1:m
      % test whether row index is less than column index
      if i < j
        upper_triangular(i, j) =  1.03^sqrt(i*j);
      else
        lower_triangular(i,j) =  1.03^m - 1.03^sqrt(i*j);
      end
   end
end

full_matrix = upper_triangular + lower_triangular;

disp(upper_triangular)
disp(lower_triangular)
disp(full_matrix)

% let's see how it's look like
figure(1), clf
subplot(131)
imagesc(upper_triangular)
axis square, title('Upper-triangular matrix')
set(gca, 'xtick', [], 'ytick', [], 'clim', [0, 1.03^m])

subplot(132)
imagesc(lower_triangular)
axis square, title('Lower-triangular matrix')
set(gca, 'xtick', [], 'ytick', [], 'clim', [0, 1.03^m])

subplot(133)
imagesc(full_matrix)
axis square, title('Full matrix')
set(gca, 'xtick', [], 'ytick', [], 'clim', [0, 1.03^m])


