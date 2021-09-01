function orbit(int, ic, n, p)
   % plots n points 
    h = (int(2) - int(1)) / n; 
    
    % initial conditons 
    x0 = ic(1); vx0 = ic(2); y0 = ic(3); 
    
    
    % y-vector 
    y(1, :) = [x0 vx0 y0]; 
    t(1) = int(1); 
    
    % sets up plot 
    set(gca, 'XLim', [-25 25], 'YLim', [0 50], 'XTick', [-25 0 25], 'YTick', ...
      [0 25 50], 'Visible', 'on');
    cla;
    
    % heads 
    head = line('color', 'r', 'Marker', '.', 'markersize', 25, ...
      'xdata', [], 'ydata', []);
   
    % tails 
    l = animatedline('Color', 'b', 'LineWidth', 3);
    
    % calculates data 
    for k = 1:n/p
      for i = 1:p
        t(i+1) = t(i) + h;
        y(i+1, :) = rkstep(t(i), y(i, :), h);
      end
      
      y(1, :) = y(p+1, :);
      t(1) = t(p+1); 
      
      % sets head
      set(head,'xdata', y(1, 1), 'ydata', y(1, 3))
     
      
      % sets tail
      addpoints(l, y(2:p, 1), y(2:p, 3));
      
      
      % draws data 
      drawnow;
    end
end