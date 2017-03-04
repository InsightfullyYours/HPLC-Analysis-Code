function [Subtracted Mark]=ShowSubtracted(Time,Data,Fit)
close all
counter=1;
for i=1:1:size(Data,2)
    choice=1;
    while choice==1
        plot(Time(1000:12000,1),Data(1000:12000,i),'k')
        hold
        plot(Time(1000:12000,1),Fit(1000:12000,i),'b')
        plot(Time(1000:12000,1),Data(1000:12000,i)-Fit(1000:12000,i),'r')
        legend(['Data';'Fit ';'Subt'])
        
        answer=input('Is that an acceptable fit?  1 is Mark, anything else is yes.    ');
        
        if answer==1
            Mark(1,counter)=i;
            counter=counter+1;
            %Fit(:,i)=BaselineChoice(Time(:,1),Data(:,i),Fit(:,i),1);
            choice=1;
        else
            Subtracted(:,i)=Data(:,i)-Fit(:,i);
            choice=2;
        end
        close all
    end
end
end
