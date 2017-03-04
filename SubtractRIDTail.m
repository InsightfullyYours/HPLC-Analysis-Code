function [Fitted Subtracted estimates FVAL]=SubtractRIDTail(yData,range)
%this fits the experimental decay of the solvent peak to the beginning of
%the data so as to remove whatever decay is present, if any.

close all

%Get the full fitting curve.  Dynamically generating it wastes lots of
%time.  We will instead dynamically change the subset of it we investigate
%for fit
FitisOut=TheRIDFit();
xData=((1:1:size(yData,1))./(10.*60))';


%do the fit for every data set in the array (column)
for i=1:size(yData,2)
    y=yData(range,i);
    ysize=size(y,1);
    big=max(range);
    ybig=yData(round(big./2):big,i);
    x=xData(round(big./2):big,1);
    
    stop=0;
    counter=1;
    
    %make sure the error is smaller than 100.  If not, redo fit with
    %new start points.  100 is arbitrary, a magic number.  We also stop the
    %retesting if we can't find a smaller solution after 100 iterations of
    %the search (again, a magic number)
    while stop==0
        start_point=round(abs(30000.*rand(2,1)));
        
        options=optimset('Display','iter','MaxIter',10000,'MaxFunEvals',10000,'TolX',1E-20,'TolFun',1E-20);
        [estimates(:,i) FVAL(:,i)]= fminsearch(@fitfun, start_point,options);
        
        if FVAL(:,i)<=100
            stop=1;
        else
            stop=0;
            counter=counter+1;
            if counter>100
                stop=1;
            end
        end
    end
    
    start_point_lin=rand(2,1);
    
    options=optimset('Display','iter','MaxIter',10000,'MaxFunEvals',10000,'TolX',1E-20,'TolFun',1E-20);
    [estimates1(:,i) FVAL1(:,i)]= fminsearch(@fitfun2, start_point_lin,options);
    
    
    Fitted1(:,i)=estimates1(1,i).*xData+estimates1(2,i);
    
    FitStart=round(abs(estimates(1,i)));
    A=estimates(2,i);
    
    if FitStart==0
        FitStart=1;
    end
    if FitStart+size(yData,1)-1>size(FitisOut)
        FitStart=1;
    end
    FitOut=FitisOut(FitStart:1:FitStart+size(yData,1)-1,1);
        
    Fitted(:,i)=FitOut+A;
    
    
    figure
    plot(xData,yData(:,i),'r')
    hold
    plot(xData,Fitted1(:,i),'b')
    plot(xData,Fitted(:,i),'g')
    plot(xData,yData(:,i)-Fitted(:,i),'k')
    legend(['Original  ';'Fitted    ';'Fitted1   ';'Subtracted']);
    
end

    function sse=fitfun(params)
        fitstart = round(abs(params(1)));
        if fitstart==0
            fitstart=1;
        end
        if fitstart+ysize-1>size(FitisOut)
            fitstart=1;
        end
        a = params(2);
        
        fitout=FitisOut(fitstart:1:fitstart+ysize-1,1);
        
        fitted=fitout+a;
        
        sse=sum((y-fitted).^2);
    end

    function sse = fitfun2(params)
        m = params(1);
        b = params(2);
        FittedCurve=m.*x+b;
        ErrorVector = FittedCurve - ybig;
        sse = sum(ErrorVector .^ 2);
    end
Subtracted=yData-Fitted;
end