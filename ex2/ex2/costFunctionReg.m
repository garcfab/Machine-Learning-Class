function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
thetaLamda = theta;
thetaLamda(1) = 0;
thetaLamda = thetaLamda * lambda;

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

Hessian = sigmoid(X*theta);
J = (1/m)*sum(-y.*log(Hessian) - (1-y).*(log(1-Hessian))) + (lambda/(2*m))...
    *sum(theta(2:end).^2);
 
H_tx_my = repmat((Hessian - y),1,size(X,2));
grad = (1/m)*(sum(H_tx_my.*X) + thetaLamda');




% =============================================================

end
