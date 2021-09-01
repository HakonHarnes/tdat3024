function y = rkstep(t, w, h)
    s1 = ydot(t, w); 
    s2 = ydot(t + (h/2), w + (h/2)*s1); 
    s3 = ydot(t + (h/2), w + (h/2)*s2);  
    s4 = ydot(t + h, w + h*s3); 

    y = w + (h/6) * (s1 + 2*s2 + 2*s3 + s4); 
end
