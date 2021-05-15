a = [0,1;-1,-1];
b = [4;2];
c = [0,1];
sys = ss(a,b,c,0);
step(sys);