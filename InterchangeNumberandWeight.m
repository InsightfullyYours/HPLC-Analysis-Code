function Output=InterchangeNumberandWeight(xaxis,yaxis,choice)
%this changes number fraction to weight fraction or weight fraction to
%number fraction.

if choice==1 %number fraction to weight fraction
    result=yaxis.*(xaxis.*sum(xaxis,1))./repmat(sum(yaxis,1),size(yaxis,1),1);
elseif choice==2 %weight fraction to number fraction
    result=yaxis.*repmat(sum(yaxis,1),size(yaxis,1),1)./(xaxis.*sum(xaxis,1));
else
    disp('Error in Interchanging number and weight fractions')
end

%scale to one
[Output,~,~]=AreaNormalize(xaxis,result,1:max(xaxis)-min(xaxis));
end