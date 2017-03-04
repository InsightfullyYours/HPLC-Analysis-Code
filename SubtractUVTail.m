function [Fitted Subtracted estimates FVAL]=SubtractUVTail(yData,range)
%this fits the experimental decay of the solvent peak to the beginning of
%the data so as to remove whatever decay is present, if any.

close all

%Get the full fitting curve.  Dynamically generating it wastes lots of
%time.  We will instead dynamically change the subset of it we investigate
%for fit
FitisOut=TheUVFit();

%do the fit for every data set in the array (column)
for i=1:size(yData,2)
    y=yData(range,i);
    ysize=size(y,1);
    
    stop=0;
    counter=1;
    
    %make sure the error is smaller than 100.  If not, redo fit with
    %new start points.  100 is arbitrary, a magic number.  We also stop the
    %retesting if we can't find a smaller solution after 100 iterations of
    %the search (again, a magic number)
    while stop==0
        start_point=round(abs(10000.*rand(3,1)));
        
        options=optimset('Display','iter','MaxIter',10000,'MaxFunEvals',10000,'TolX',1E-800,'TolFun',1E-800);
        [estimates(i,:) FVAL(i,:)]= fminsearch(@fitfun, start_point,options);
        
        if FVAL(i,:)<=100
            stop=1;
        else
            stop=0;
            counter=counter+1
            if counter>100
                stop=1;
            end
        end
    end
    
    FitStart=round(abs(estimates(i,1)));
    A=estimates(i,2);
    B=estimates(i,3);
    
    FitOut=FitisOut(FitStart:1:FitStart+size(yData,1)-1,1);
    
    Fitted(:,i)=B.*FitOut+A;
    
    figure
    plot(yData(:,i),'r')
    hold
    plot(Fitted(:,i),'b')
    plot(yData(:,i)-Fitted(:,i),'k')
    legend(['Original  ';'Fitted    ';'Subtracted']);
    
end

    function sse=fitfun(params)
        fitstart = round(abs(params(1)));
        if fitstart==0
            fitstart=1;
        end
        if fitstart+ysize-1>=size(FitisOut,1)
            fitstart=round(fitstart./size(FitisOut,1));
        end
        a = params(2);
        b = params(3);
        
        fitout=FitisOut(fitstart:1:fitstart+ysize-1,1);
        
        fitted=b.*fitout+a;
        
        sse=sum((y-fitted).^2);
    end
Subtracted=yData-Fitted;
end