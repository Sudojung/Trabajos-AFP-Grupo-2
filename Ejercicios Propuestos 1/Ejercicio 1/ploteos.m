x1=[0:0.1:5]';
x2=[-2.5:0.1:2.5]';
x3=[-pi:pi/25:pi]';
A=[x1 x2 x3];
f=1
for k=A
  figure(f);
  plot (k,sin(k));
  f=f+1;
  end

