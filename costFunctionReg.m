function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
J=(1/m)*sum(-y.*log(sigmoid(X*theta))-(1-y).*log(1-sigmoid(X*theta)))+(lambda/(2*m))*sum(theta(2:end).^2); %Cost
grad=(1/m)*X'*(sigmoid(X*theta)-y); %Gradient of cost fcn
grad(2:end)=grad(2:end)+(lambda/m)*theta(2:end);

end
