function z = ydot(~, x)
    g = 1;
    
    m1 = 1;
    m2 = 1; 
    m3 = 1; 
    
    mg1 = m1*g; 
    mg2 = m2*g; 
    mg3 = m3*g; 
    
    px1 = x(1); py1 = x(3);  vx1 = x(2);  vy1 = x(4);
    px2 = x(5); py2 = x(7);  vx2 = x(6);  vy2 = x(8);
    px3 = x(9); py3 = x(11); vx3 = x(10); vy3 = x(12);
    
    dist1 = sqrt((px2-px1)^2 + (py2-py1)^2);
    dist2 = sqrt((px2-px3)^2 + (py2-py3)^2);
    dist3 = sqrt((px3-px1)^2 + (py3-py1)^2);
    
    z = zeros(1, 8);
    
    z(1) = vx1;
    z(2) = (mg2*(px2-px1))/(dist1^3)+(mg3*(px3-px1))/(dist3^3);
    
    z(3) = vy1;
    z(4) = (mg2*(py2-py1))/(dist1^3)+(mg3*(py3-py1))/(dist3^3);
    
    z(5) = vx2;
    z(6) = (mg1*(px1-px2))/(dist1^3)+(mg3*(px3-px2))/(dist2^3);
    
    z(7) = vy2;
    z(8) = (mg1*(py1-py2))/(dist1^3)+(mg3*(py3-py2))/(dist2^3);
    
    z(9) = vx3;
    z(10) = (mg1*(px1-px3))/(dist3^3)+(mg2*(px2-px3))/(dist2^3);
    
    z(11) = vy3;
    z(12) = (mg1*(py1-py3))/(dist3^3)+(mg2*(py2-py3))/(dist2^3);
end