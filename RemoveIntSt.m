function finalout=RemoveIntSt(xData,yData,IntSt,fullIntStrange,range,index,excision)
for i=1:1:size(yData,2)
    close all
    %shift IntSt so IntSt peak is at same place as data IntSt peak
    IntStworking1=SameX(IntSt,yData(:,i),range);
    IntStworking=HeightNorm(IntStworking1,yData(:,i),range);

    %fit the shape as
    if nargin==7
        disp('Exclusions On')
        final(:,i)=FitShape(xData,IntStworking,yData(:,i),[fullIntStrange(1):1:excision(1),excision(end):1:fullIntStrange(end)]);
    else
        final(:,i)=FitShape(xData,IntStworking,yData(:,i),fullIntStrange);
    end
    
    finalout(:,i)=yData(:,i);
    finalout(index:end,i)=finalout(index:end,i)-final(index:end,i);
    
    if finalout(index-1,i)>finalout(index,i)
        diff=finalout(index-1,i)-finalout(index,i);
        finalout(index:end,i)=finalout(index:end,i)+diff;
    elseif finalout(index-1,i)<finalout(index,i)
        diff=finalout(index-1,i)-finalout(index,i);
        finalout(index:end,i)=finalout(index:end,i)+diff;
    end
end

close all
plot(finalout,'r')
hold
plot(yData,'k')
legend(['Fit     ';'Original'])

beep
beep
beep

end


