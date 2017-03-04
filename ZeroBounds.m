function [Bounds percent]=ZeroBounds(FNaxis,percent)
%This function takes the control of a set of experiments, lowers subtracts
%two percent of the maximum value, then finds the zero crossings for use in
%the area calculations.

%we put it all in a while loop so that we can adjust the percentage to
%insure we've found only the specific piece.
done=0;
%percent=0.2;
while done~=1
    %first, subtract off the percentage
    Subtracted=FNaxis(:,1)-max(FNaxis(1000:end-100,1)).*percent;

    %find all the values above and below zero using booleans
    greaterthanzero=Subtracted>0;
    
    strgreaterthanzero=num2str(greaterthanzero);
    
    %we want to find where the the peak goes from negative to positive and from
    %positive to negative.  We create the strings that will be compared with
    %the data.
    negtopos=num2str([0; ones(100,1)]);
    postoneg=num2str([1; zeros(100,1)]);
    
    foundnegtopos=strfind(strgreaterthanzero',negtopos');
    foundpostoneg=strfind(strgreaterthanzero',postoneg');
    
    if numel(foundnegtopos)==1 && numel(foundpostoneg)==1
            
        close all
        figure
    plot(Subtracted)
    hold
        plot(greaterthanzero,'r')
        done=1;
        Bounds(1,1)=foundnegtopos(1,1);
        Bounds(2,1)=foundpostoneg(1,1);
       % close all
        %just for debugging
        figure
        plot(FNaxis)
        hold
        plot(Bounds(1,1),FNaxis(Bounds(1,1),:),'ok')
        plot(Bounds(2,1),FNaxis(Bounds(2,1),:),'ok')
        
        figure
        diff=FNaxis-repmat(FNaxis(:,1),1,size(FNaxis,2));
        plot(diff)
        hold
        plot(Bounds(1,1),diff(Bounds(1,1),:),'ok')
        plot(Bounds(2,1),diff(Bounds(2,1),:),'ok')
    else
        done=0;
        percent=percent+0.005;
    end
end
end
