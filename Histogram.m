function [linaxis,Histograms]=Histogram(Naxis,Data)
%this takes an N axis and a set of Data, and fills the gaps in the data
%using a basic average, or reduces the range of a single N to one data
%point

%round Naxis
roundN=round(Naxis);
roundN=repmat(roundN,1,size(Data,2));

%create a new axis that goes by 1 from 1 to the max of Naxis (up to 10000
%monomers)
if max(roundN)<=10000
    linaxis=(max(roundN):-1:1)';
elseif max(roundN)>10000
    linaxis=(10000:-1:1)';
end
linaxis=repmat(linaxis,1,size(Data,2));

%now we map the Data to the new axis
Histograms=zeros(size(linaxis,1),size(linaxis,2));
for k=1:1:size(linaxis,2)
    %cycle through lengths and directly match sizes
    for i=1:1:size(linaxis,1)
        %find the indices of the data that matches the current length
        x=find(roundN(:,k)==linaxis(i,k));
        
        if isempty(x)
            %if no data is of the current length, amplitude is zero
            Histograms(i,k)=0;
        else
            %if some data is of current length, average that data for
            %amplitude
            Histograms(i,k)=sum(Data(x,k),1)./size(x,1);
        end
    end
    %fill in the holes in the distribution
    for i=2:1:size(linaxis)-1
        %if the amplitude is zero, find the next nonzero amplitude
        if Histograms(i,k)==0
            for j=i+1:size(linaxis,1)
                if Histograms(j,k)~=0    %finds where the next number is and sets j to that index
                    break
                end
            end
            %the amplitude is the average of the previous amplitude and the
            %next
            Histograms(i,k)=mean([Histograms(i-1,k);Histograms(j,k)]);
        end
    end
end

end
