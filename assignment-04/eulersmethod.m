% performs eulers method on function ydot 
function [t, y, e] = eulersmethod(inter, y0, n)
    t(1) = inter(1); 
    y(1) = y0;
    e(1) = 0; 

    h = (inter(2) - inter(1)) / n; 

    for  i = 1:n
        t(i+1) = t(i) + h;
        y(i+1) = eulerstep(t(i), y(i), h); 
        e(i+1) = exact(t(i+1)) - y(i+1); 
    end

    plot(t, y)
end