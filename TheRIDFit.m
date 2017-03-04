function FitOut=TheRIDFit()

x=(1:1:100000)';
x=x./(10.*60);

%arrived at through iterative solver
coefficients = [
    0.0199;
   -8.4384;
    0.1022;
    0.0092;
    0.9996;
    0.0124;
   -0.0040;
   -0.0006;
   -0.0004;
    0.1190;
   -0.8057;
   -0.0311;
    1.1009;
    0.5629;
    0.0170;
   -0.0019;
    0.0455;
    0.3623;
   -0.0285;
    0.0015;
    1.0708;
    0.4471;
    0.0000;
    0.0001;
    5.5929;
    0.0337;
    ];

a = coefficients(1);
b = coefficients(2);
c = coefficients(3);
d = coefficients(4);
e = coefficients(5);
f = coefficients(6);
g = coefficients(7);
h = coefficients(8);
i = coefficients(9);
j = coefficients(10);
k = coefficients(11);
l = coefficients(12);
m = coefficients(13);
n = coefficients(14);
o = coefficients(15);
p = coefficients(16);
q = coefficients(17);
r = coefficients(18);
s = coefficients(19);
t = coefficients(20);
u = coefficients(21);
v = coefficients(22);
w = coefficients(23);
xx = coefficients(24);
yy = coefficients(25);
z = coefficients(26);
FitOut=f./(a.*(x.^e+c))+d+g./(h.*(x.^i+j))+k./(l.*(x.^m+n))+o./(p.*(x.^q+r))+s./(t.*(x.^u+v))+w./(xx.*(x.^yy+z));

end