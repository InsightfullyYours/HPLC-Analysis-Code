function FitOut=TheUVFit()

x=(1:1:100000)';
x=x./(10.*60);

%arrived at through iterative solver
coefficients = [
    0.0244;
    -0.9764;
    0.5183;
    1.0842;
    1.1943;
    0.5741;
    0.3423;
    0.2008;
    0.0031;
    -0.2028;
    -1.3604;
    -0.0181;
    1.4508;
    2.6194;
    0.0079;
    -0.0015;
    0.1100;
    0.4387;
    -0.0482;
    0.0011;
    0.8196;
    0.2022;
    0.1109;
    0.0032;
    0.8422;
    0.1687;
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