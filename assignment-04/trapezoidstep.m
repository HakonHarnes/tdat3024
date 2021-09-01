% one step in the trapezoid method 
function y = trapezoidstep(t, y, h)
    y = y + (h/2) * (ydot(t, y) + ydot(t+h, y + h*ydot(t, y)));
end