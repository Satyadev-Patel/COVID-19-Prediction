%%
%Calculus approach.
%given data is the covid positive cases on each day of April in INDIA.
data = load('data.txt');
y = data
X = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29];
m = length(y);
plot(X, y,'rx','MarkerSize',10);
hold on;
X = [ones(m, 1), X];
theta = zeros(2, 1);
iterations = 1400;
alpha = 0.001;
theta = gradient_descent(X, y, theta, alpha, iterations);
ans1 = X*theta
%here we got values of theta which will give result with minimum possible
%error.
plot(X(:,2), X*theta, '-')
hold on;

%%
%Matrices Approach
C = inv(X'*X);
C = C*X';
ans_theta = C*y;
ans = X*ans_theta
plot(X(:,2), X*ans_theta, '-')


