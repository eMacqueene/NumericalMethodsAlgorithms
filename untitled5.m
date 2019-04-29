f=@(x,y) 4*x + 2*y*x^2 -2*x^4 + 2*x*y - 3*y^2
[f,x,y]=fminsearch(@(x,y) f(x,y),1,1)