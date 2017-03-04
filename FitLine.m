function [fitted fitted2 estimates estimates2 sse sse2]=FitLine(xData,yData,range)
if size(xData,2)==1
    xData=repmat(xData,1,size(yData,2));
end

for i=1:size(yData,2)
    y=yData(range,i);
    x=xData(range,i);
    start_point = rand(1, 2);
    options=optimset('Display','none','MaxIter',10000,'MaxFunEvals',10000,'TolX',1E-40,'TolFun',1E-40);
    estimates(i,:) = fminsearch(@expfun, start_point,options);
    estimates2(i,:) = fminsearch(@expfun2, start_point,options);
    fitted(:,i)=estimates(i,1).*xData(:,i)+estimates(i,2);
    fitted2(:,i)=estimates2(i,1)+estimates2(i,2).*xData(:,i).^2;
    sse(:,i)=sum((fitted(range,i)-y).^2);
    sse2(:,i)=sum((fitted2(range,i)-y).^2);
    
end


plot(xData,yData,'*')

text(1,4E-4,{'line sse',num2str(sse)})
text(1,5E-4,{'squared sse',num2str(sse2)})
plot(xData,fitted,'-')
plot(xData,fitted2,':')

    function sse = expfun(params)
        m = params(1);
        b = params(2);
        line = m.*x+b;
        FittedCurve=line;
        ErrorVector = FittedCurve - y;
        sse = sum(ErrorVector .^ 2);
    end

    function sse = expfun2(params)
        A = params(1);
        B = params(2);
        line=A+B.*x.^2;
        ErrorVector=line-y;
        sse=sum(ErrorVector.^2);
    end

end