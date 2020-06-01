%%
%Calculus approach.
%data
y = [100; 320; 450; 570; 490; 720; 834; 890; 1120; 1196];
X = [1;2;3;4;5;6;7;8;9;10];
m = length(y);
plot(X, y,'rx','MarkerSize',10);
X = [ones(m, 1), X];
theta = zeros(2, 1);
iterations = 400;
alpha = 0.01;
theta = gradientDescent(X, y, theta, alpha, iterations);
ans1 = X*theta
%here we got values of theta which will give result with minimum possible
%error.



%%
%Matrices Approach
C = inv(X'*X);
C = C*X';
ans_theta = C*y;
ans = X*ans_theta


