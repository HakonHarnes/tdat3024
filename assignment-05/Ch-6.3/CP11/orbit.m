function orbit(int, ic, n, p)
   % plots n points 
    h = (int(2) - int(1)) / n; 
    
    % initial conditons 
    x1 = ic(1); vx1 = ic(2);  y1 = ic(3);  vy1 = ic(4); 
    x2 = ic(5); vx2 = ic(6);  y2 = ic(7);  vy2 = ic(8); 
    x3 = ic(9); vx3 = ic(10); y3 = ic(11); vy3 = ic(12);
    
    % y-vector 
    y(1, :) = [x1 vx1 y1 vy1 x2 vx2 y2 vy2 x3 vx3 y3 vy3]; 
    t(1) = int(1); 
    
    % sets up plot 
    set(gca, 'XLim', [-5 5], 'YLim', [-5 5], 'XTick', [-5 0 5], 'YTick', ...
      [-5 0 5], 'Visible', 'on');
    cla;
    
    % heads 
    head1=line('color', 'r', 'Marker', '.', 'markersize', 25, ...
      'xdata', [], 'ydata', []);
    head2=line('color', 'r', 'Marker', '.', 'markersize', 25, ...
      'xdata', [], 'ydata', []);
    head3=line('color', 'r', 'Marker', '.', 'markersize', 25, ...
      'xdata', [], 'ydata', []);
    
    % tails 
    l1 = animatedline('Color', 'b', 'LineWidth', 3);
    l2 = animatedline('Color', 'b', 'LineWidth', 3);
    l3 = animatedline('Color', 'b', 'LineWidth', 3);
    
    % calculates data 
    for k = 1:n/p
      for i = 1:p
        t(i+1) = t(i) + h;
        y(i+1, :) = eulerstep(t(i), y(i, :), h);
      end
      
      y(1, :) = y(p+1, :);
      t(1) = t(p+1); 
      
      % sets heads 
      set(head1,'xdata', y(1, 1), 'ydata', y(1, 3))
      set(head2,'xdata', y(1, 5), 'ydata', y(1, 7))
      set(head3,'xdata', y(1, 9), 'ydata', y(1, 11))
      
      % sets tails 
      addpoints(l1, y(2:p, 1), y(2:p, 3));
      addpoints(l2, y(2:p, 5), y(2:p, 7));
      addpoints(l3, y(2:p, 9), y(2:p, 11));
      
      % draws data 
      drawnow;
    end
end