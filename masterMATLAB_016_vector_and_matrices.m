%% Assignment
% Use semicolons and squares brackets [] to create column vectors, row vectors, and matrices.

%% Bonus
% Use functions ones, zeros and randn to make vectors and matrices with specified values.

%% Skills
% transpose, ones, zeros, randn, []

%%

% make a row vector using square brackets
row_vect = [ 1, 2, 3, 4, 2, 3, 1, 0, -999];

% make a column vector using square brackets
column_vect = [ 2; 4; 5; 1; 0];

% make a column vector by transposig a row vector
row_t_vect = row_vect'; 

% create a 2x3 matrix
matr = [ 1, 2, 3; 4, 5, 7 ];

% or transpose a 3x2 matrix
transpose_matr = matr';

% make a row vector of ones
onesvect = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
ones_row_vect = ones(1,4);

% column vector of .25
column_vect_example = ones(8,1)*.25;
column_vect_example2 = zeros(8,1)+.25;

% matrix of random numbers
matr_rand = randn(4, 3);



