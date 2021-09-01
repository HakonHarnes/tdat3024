function y = midpointstep(t, y, h)
    y = y + h * ydot(t + (h/2), y + (h/2) * ydot(t, y)); 
end
