
% h = (xr - xl) / M = 0.100 => M = 10
% k = (yt - yb) / N = 0.002 => N = 500
% k = (yt - yb) / N > 0.003 => N < 333

% -- TASK A -- % 
figure('Name', 'Task a, k = 0.002');
heatfd_a(0, 1, 0, 1, 10, 500); 

figure('Name', 'Task a, k > 0.003');
heatfd_a(0, 1, 0, 1, 10, 300);

% -- TASK B -- % 
figure('Name', 'Task b, k = 0.002');
heatfd_b(0, 1, 0, 1, 10, 500); 

figure('Name', 'Task b, k > 0.003');
heatfd_b(0, 1, 0, 1, 10, 300);

i = 0; 
i