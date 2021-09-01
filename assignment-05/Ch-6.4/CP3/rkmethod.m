% performs the trapezoid method on function ydot 
function [t, w, y, e] = rkmethod(inter, y0, n)
    t(1) = inter(1); 
    w(1) = y0;
    y(1) = y0; 
    e(1) = 0; 

    h = (inter(2) - inter(1)) / n; 

    for  i = 1:n       t(i+1) = t(i) + h;
        w(i+1) = rkstep(t(i), w(i), h); 
        y(i+1) = exact(t(i+1)); 
        e(i+1) = y(i+1) - w(i+1); 
    end
    
    plot(t, w, 'LineWidth', 2); 
end
