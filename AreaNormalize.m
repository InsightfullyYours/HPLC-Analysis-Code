
function [Norm,Area,AreaAfter]=AreaNormalize(xaxis,yaxis,range)
%This normalizes by area by doing a trapezoidal reiman sum of the
%form:  (1/2)*Q*[f(a)+2f(a+Q)+2f(a+2Q)+2f(a+3Q)+...+f(b)]
%where a is the begining of the xaxis, b the end, and Q the step
%size.  So it's .5*rate*[y(1)+2y(2)+2y(3)+...+2y(b-1)+y(b)]

step=xaxis(range,1);
ycalc=abs(yaxis(range,:));
Area=trapz(-step,ycalc,1);

Norm=yaxis./abs(repmat(Area,size(yaxis,1),1));
AreaAfter=trapz(-step(:,1),Norm(range,:),1);
end