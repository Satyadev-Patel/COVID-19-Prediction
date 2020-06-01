function theta = gradient_descent(X, y, theta, Alpha, iters)
m = length(y);
for iter = 1:iters

    
    hx = X*theta;
    ff1 = hx - y;
    ff1 = ff1.*X(:,1);
    sum1 = sum(ff1);
    theta(1) = theta(1) - (Alpha*sum1)/m;
    
    ff2 = hx - y;
    ff2 =ff2.*X(:,2);
    sum2 = sum(ff2);
    theta(2) = theta(2) - (Alpha*sum2)/m;

end

end
