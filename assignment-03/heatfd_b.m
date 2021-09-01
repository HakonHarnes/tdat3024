% forward difference method for heat equation, task b
function w = heatfd_b(xl, xr, yb, yt, M, N)

    % initial and boundary conditions
    f = @(x) exp(x); % u(x, 0) 
    l = @(t) exp(2*t); % u(0, t)
    r = @(t) exp(2*t + 1); % u(1, t)
    
    D = 2; % diffusion coefficient  
    h = (xr - xl) / M; % step size, h
    k = (yt - yb) / N; % step size, k 

    m = M - 1; n = N;
    sigma = D*k / (h*h);
    
    % defines matrix A 
    a = diag(1 - 2 * sigma * ones(m, 1)) + diag(sigma * ones(m-1, 1), 1);
    a = a + diag(sigma * ones(m-1, 1), -1); 

    lside = l(yb + (0:n) * k);
    rside = r(yb + (0:n) * k);

    % initial conditions
    w(:,1) = f(xl + (1:m) * h)';     
    for j=1 : n
    w(:, j+1) = a * w(:, j) + sigma * [lside(j); zeros(m-2,1 ); rside(j)];
    end
    
    % plotting variables 
    w = [lside; w; rside]; 
    x = (0: m+1) * h;
    t = (0:n) * k;

    % plots the solution 
    mesh(x, t, w') 
    view(60, 30); axis([xl xr yb yt 0 10])
end