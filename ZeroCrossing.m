function [crosspostoneg, crossnegtopos]=ZeroCrossing(FNaxis,range,window)
%this function finds the zero crossings in data.  It is meant to find the
%place in the subtracted distribution in which the MW increases change to
%MW decreases and back to MW increases.  These values will define the areas
%for kinetics.

%this restriction allows
yaxis=FNaxis(range,:);
%find all the values that are greater than zero (and by default all those
%less as well
for i=2:1:size(yaxis,2)
    greaterthanzero=yaxis(:,i)>0;
    %Turn the boolean greaterthanzero into a string
    strgreaterthanzero=num2str(greaterthanzero);
    
    %Define the test criteria.  We want to find the zero crossings that are not
    %trivial; we do this by defining a "window" whereby there has to be
    %"window" number of zeros followed by the same number of ones and visca
    %versa.  This corresponds to window data points >0 followed by window data
    %points <0.
    postoneg=num2str([ones(window,1); zeros(window,1)]);
    negtopos=num2str([zeros(window,1); ones(window,1)]);
    
    %use the built in string functions to find the location of all the
    %crossings. The indices are from the beginning of the matching string; we add the
    %window back on to get the index of the actual crossing.  This selects the
    %index of the first point on the OTHER side of the crossing; an index of 50
    %for a negative to positive transition means 50 is the first point that is
    %positive.  We then add on the first index in range; this allows the reported indices
    %to be global to the data set, not specific to the chunk of data in range.
    foundpostoneg=(strfind(strgreaterthanzero',postoneg')+window+range(1,1)-1)';
    foundnegtopos=(strfind(strgreaterthanzero',negtopos')+window+range(1,1)-1)';
    
    if isempty(foundpostoneg)
        foundpostoneg=NaN;
    end
    if isempty(foundnegtopos)
        foundnegtopos=NaN;
    end
    crosspostoneg(:,i)=foundpostoneg(1,end);
    crossnegtopos(:,i)=foundnegtopos(1,end);
end
end




