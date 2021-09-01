function z = ydot(~, y)
  s = 10; 
  r = 28; 
  b = 8/3; 
  
  z(1) = -s*y(1) + s*y(2); 
  z(2) = -y(1)*y(3) + r*y(1) - y(2); 
  z(3) = y(1)*y(2) - b*y(3); 
end