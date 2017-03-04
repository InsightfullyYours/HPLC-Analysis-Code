function [Bounds percent]=ZeroBoundsSearch(FNaxis,percent)
%This function takes the control of a set of experiments, lowers subtracts
%two percent of the maximum value, then finds the zero crossings for use in
%the area calculations.

%we put it all in a while loop so that we can adjust the percentage to
%insure we've found only the specific piece.
done=0;
%percent=0.2;
while done~=1
    %first, subtract off the percentage
    Subtracted=FNaxis(:,1)-max(FNaxis(1000:end-400,1)).*percent;

    %find all the values above and below zero using booleans
    greaterthanzero=Subtracted<0;
    
    strgreaterthanzero=num2str(greaterthanzero);
    
    %we want to find where the the peak goes from negative to positive and from
    %positive to negative.  We create the strings that will be compared with
    %the data.
    negtopos=num2str([0; ones(100,1)]);
    postoneg=num2str([1; zeros(100,1)]);
    
    foundnegtopos=strfind(strgreaterthanzero',negtopos');
    foundpostoneg=strfind(strgreaterthanzero',postoneg');
    
    Bounds=zeros(2,size(FNaxis,2));
    
    if numel(foundnegtopos)==1 && numel(foundpostoneg)==1
        close all
        for i=2:1:size(FNaxis,2)
            Sub=FNaxis(foundpostoneg-100:foundpostoneg+100,i)-FNaxis(foundpostoneg-100:foundpostoneg+100,1);
            SubBoolean=Sub>0;
            index=round(mean(strfind((num2str(SubBoolean))',(num2str([1;0]))')+foundpostoneg-100,2));
            if isempty(index)
                plot(FNaxis(:,i)-FNaxis(:,1),'o')
                i
                Bounds(1,i)=input('What is the Index of the positive to negative crossing?');
            else
                Bounds(1,i)=index;
            end
            
            Sub=FNaxis(foundnegtopos-100:foundnegtopos+100,i)-FNaxis(foundnegtopos-100:foundnegtopos+100,1);
            SubBoolean=Sub>0;
            index=round(mean(strfind((num2str(SubBoolean))',(num2str([0;1]))')+foundnegtopos-100,2));

            if isempty(index)
                i
                plot(FNaxis(:,i)-FNaxis(:,1),'o')
                Bounds(2,i)=input('What is the Index of the negative to positive crossing?');
            else
                Bounds(2,i)=index;
            end
        end
        
        Bounds(1,1)=min(Bounds(1,2:end));
        Bounds(2,1)=max(Bounds(2,2:end));
        
        figure
        plot(Subtracted)
        hold
        plot(greaterthanzero,'r')
        done=1;
        % close all
        %just for debugging
        figure
        plot(FNaxis)
        hold
        plot(Bounds(1,2:end),diag(FNaxis(Bounds(1,2:end),2:end)),'ok')
        plot(Bounds(2,2:end),diag(FNaxis(Bounds(2,2:end),2:end)),'ok')
        
        figure
        diff=FNaxis-repmat(FNaxis(:,1),1,size(FNaxis,2));
        plot(diff)
        hold
        plot(Bounds(1,2:end),diag(diff(Bounds(1,2:end),2:end)),'ok')
        plot(Bounds(2,2:end),diag(diff(Bounds(2,2:end),2:end)),'ok')
    else
        done=0;
        percent=percent+0.005;
    end
end
end
