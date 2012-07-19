function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Find indices of positive and negative values
pos = X(find(y==1), :); % Create a matrix with the info of admitted stud
neg = X(find(y==0), :); % Create a matrix with the info of rejected stud


% Plot examples
plot( pos(:, 1), pos(:, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 8);
plot( neg(:, 1), neg(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 8);



% =========================================================================



hold off;

end
