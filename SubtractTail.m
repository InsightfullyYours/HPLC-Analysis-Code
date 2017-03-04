function [Fitted Subtracted estimates FVAL]=SubtractTail(yData,range)
%this fits the experimental decay of the solvent peak to the beginning of
%the data so as to remove whatever decay is present, if any.

close all

%Get the full fitting curve.  Dynamically generating it wastes lots of
%time.  We will instead dynamically change the subset of it we investigate
%for fit
xData=((1:1:size(yData,1))./(10.*60))';


%do the fit for every data set in the array (column)
for i=1:size(yData,2)
    y=yData(range,i);
    
    %make sure the error is smaller than 100.  If not, redo fit with
    %new start points.  100 is arbitrary, a magic number.  We also stop the
    %retesting if we can't find a smaller solution after 100 iterations of
    %the search (again, a magic number)
    skip = 0;
    counter = 1;
            start_point_lin=rand(26,1);
    while skip==0;
        
        options=optimset('Display','iter','MaxIter',10000,'MaxFunEvals',10000,'TolX',1E-20,'TolFun',1E-20);
        [estimates(:,i) FVAL(:,i)]= fminsearch(@fitfun, start_point_lin,options);
        
        coefficients=estimates(:,i);
        
        a = coefficients(1);
        b = coefficients(2);
        c = coefficients(3);
        d = coefficients(4);
        e = coefficients(5);
        f = coefficients(6);
        g = coefficients(7);
        h = coefficients(8);
        ii = coefficients(9);
        j = coefficients(10);
        k = coefficients(11);
        l = coefficients(12);
        m = coefficients(13);
        n = coefficients(14);
        o = coefficients(15);
        p = coefficients(16);
        q = coefficients(17);
        r = coefficients(18);
        s = coefficients(19);
        t = coefficients(20);
        u = coefficients(21);
        v = coefficients(22);
        w = coefficients(23);
        xx = coefficients(24);
        yy = coefficients(25);
        z = coefficients(26);
        
        Fitted(:,i)=f./(a.*(xData.^e+c))+d+g./(h.*(xData.^ii+j))+k./(l.*(xData.^m+n))+o./(p.*(xData.^q+r))+s./(t.*(xData.^u+v))+w./(xx.*(xData.^yy+z));
        
        if FVAL(:,i)<1000 || counter == 20
            skip=1;
        elseif FVAL(:,i)>3000
                    start_point_lin=rand(26,1);
            skip=0;
            counter=counter+1
        elseif FVAL(:,i)>1000 && FVAL(:,i)<3000
            start_point_lin=coefficients;
            skip=0;
        end
    end
    
%     figure
%     plot(xData,yData(:,i),'r')
%     hold
%     plot(xData,Fitted(:,i),'b')
%     plot(xData,yData(:,i)-Fitted(:,i),'k')
%     legend(['Original  ';'Fitted    ';'Fitted1   ';'Subtracted']);
    
end

    function sse=fitfun(coefficients)
        
        fitted=TheFit(coefficients,range(end),range(1));
        
        %remove the importance of the first 5% of pts in the fit;
        %this is where the largest differences are and it is the least important
        %part of the fit since the data comes out at the end.
        thesize=max(size(range));
        begin=round(0.05.*thesize);
        
        sse=sum((y-fitted).^2);
    end

Subtracted=yData-Fitted;
beep
beep
beep
end