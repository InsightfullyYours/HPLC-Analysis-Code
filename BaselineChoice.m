function [Output FittedData]=BaselineChoice(xData,yData,FittedData,startover)
%this allows one to compare the two baseline subtractions and adjust them
%to best produce results.
i=1;
if startover==1
    start=1;
else
    load BaselineChoicetemp
    start=i;
end
clear i

for i=start:1:size(yData,2)
    i
    if i==5 || i==10 ||i==15 || i==20 ||i==25 || i==30 ||i==35 || i==40 ||i==45 || i==50 ||i==55 || i==60 ||i==65 || i==70 ||i==75 || i==80 ||i==85 || i==90 ||i==95 || i==100 ||i==105 || i==110 ||i==115 || i==120 ||i==125 || i==130 ||i==135 || i==140
        save BaselineChoicetemp
    end
    choice=0;
    while choice==0
        close all
        LineFit(:,i)=FitLine(xData(:,i),yData(:,i),[100:5000]);
        plot(yData(:,i),'k')
        hold
        text(1000,1,num2str(i));
        plot(FittedData(:,i),'r')
        plot(LineFit(:,i),'b')
        legend(['Original Data ';'Decay Fit Data';'Line Fit Data '])
        xlabel('Index')
        ylabel('GPC')
        
        choice2=input('Redo any fit? 1 is Linear, 2 is Decay:    ');
        if choice2==1
            range=input('What is the range for a linear fit?  Form [x:y]:   ');
            LineFit(:,i)=FitLine(xData(:,i),yData(:,i),range);
            FittedDecay=FittedData(:,i);
        elseif choice2==2
            range=input('What is the range for a Decay fit?  Form [x:y]:   ');
            LineFit(:,i)=ones(size(yData,1),1);
            FittedDecay=SubtractTail(yData(:,i),range);
        else
            FittedDecay=FittedData(:,i);
        end
        close all
        plot(yData(:,i),'k')
        hold
        text(1000,1,num2str(i));
        plot(FittedDecay,'r')
        plot(LineFit(:,i),'b')
        if choice2==1
            plot(yData(:,i)-LineFit(:,i),'g')
        elseif choice2==2
            plot(yData(:,i)-FittedDecay,'g')
        else
            plot(yData(:,i)-FittedDecay,'g')
            plot(yData(:,i)-LineFit(:,i),'c')
        end
        legend(['Original Data ';'Decay Fit Data';'Line Fit Data ';'SubtractedData';'SubtractedLine'])
        xlabel('Index')
        ylabel('GPC')
        which=input('What fit do you prefer?  1 is line, 2 is Decay, anything else reasks the question:   ');
        
        switch which
            case 1
                Output(:,i)=LineFit(:,i);
                choice=1;
            case 2
                FittedData(:,i)=FittedDecay;
                Output(:,i)=FittedData(:,i);
                choice=1;
            otherwise
                choice=0;
        end
    end
    
end
end
