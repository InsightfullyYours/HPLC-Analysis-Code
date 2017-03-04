function Shifted=SameX(yData,AveData,range)


[~,loc]=max(yData(range,:),[],1)
[~,loc2]=max(AveData(range,:),[],1)

diff=loc2-loc
absdiff=abs(diff)
for i=1:size(yData,2)
    if diff(i)<0
        Shifted(:,i)=[yData(absdiff(i)+1:end,i); zeros(absdiff(i),1)];
    elseif diff(i)>0
        Shifted(:,i)=[zeros(absdiff(i),1); yData(1:end-absdiff(i),i)];
    elseif diff(i)==0
        Shifted(:,i)=yData(:,i);
    else
        disp('Shift Error')
    end
    
    
end

[~,locE]=max(Shifted(range,:),[],1);
[~,loc2E]=max(AveData(range,:),[],1);
err=locE-loc2E

plot(Shifted)

end


