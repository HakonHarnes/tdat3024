% h = 0.1 
figure('Name', 'h = 0.1'); 
[t, w, y, e] = rkmethod([0 1], 1, 10); 
table(t', w', y', e', 'VariableNames', {'t', 'w', 'y', 'e'}) 

% h = 0.05 
figure('Name', 'h = 0.05'); 
[t, w, y, e] = rkmethod([0 1], 1, 20); 
table(t', w', y', e', 'VariableNames', {'t', 'w', 'y', 'e'}) 

% h = 0.025
figure('Name', 'h = 0.025'); 
[t, w, y, e] = rkmethod([0 1], 1, 40); 
table(t', w', y', e', 'VariableNames', {'t', 'w', 'y', 'e'}) 
