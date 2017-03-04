function fitted=FitToSubtractionData(xData,yData)

for i=1:size(yData,2)
    y=yData;
    x=xData;
    start_point = rand(1, 2);
    options=optimset('Display','none','MaxIter',10000,'MaxFunEvals',10000,'TolX',1E-40,'TolFun',1E-40);
    estimates(i,:) = fminsearch(@expfun, start_point,options);
    fitted(:,i)=estimates(i,1).*xData(:,i)+estimates(i,2);
    sse(:,i)=sum((fitted(:,i)-y).^2);

    plot(xData,yData,'or')
    plot(xData,fitted,'-r')
end

function sse = expfun(params)
        m = params(1);
        b = params(2);
        line = m.*x+b;
        FittedCurve=line;
        ErrorVector = FittedCurve - y;
        sse = sum(ErrorVector .^ 2);
end
end
