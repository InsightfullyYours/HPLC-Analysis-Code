function MWXaxis=TransformX(xTime,oldnew)
%This function transforms the x axis from time(min) to MW based on
%the GPC calibration curve.
%This changes the values in the time vector so that only the
%Calibrated range is changed to MW.  All other values are set to
%the MW at 12.5minutes, which is outside the calibrated range

%The letters are the opposite of those in the export files
check=find(xTime<10.5);
xTime(check)=10.5;

xTime=xTime.*60; %convert to seconds

if oldnew==0  %this is 2 colum
    a=1.93165E7;
    b=2.81645E6;
    c=-1.75077E6;
    d=236534.44232;
    e=-14585.34916;
    f=435.78173;
    g=-5.13227;
elseif oldnew==1  %this is 2column/2column (Resi-Resi/Mesi-Resi)
    a=-4.900882244E-11;
    b=2.058938486E-7;
    c=0.0003153731941;
    d=0.2025771423;
    e=-40.44872522;
    f=0;
    g=0;
elseif oldnew==2  %this is 2/3 column switchable 2 column UV detector
    a=-2.866117528;
    b=0.04002332988;
    c=-5.382586768E-5;
    d=2.026961038E-8;
    e=0;
    f=0;
    g=0;
elseif oldnew==3  %this is 2/3 column switchable 2 column RID detector
    a=-3.177184773;
    b=.04084312483;
    c=-5.428356495E-5;
    d=2.026913156E-8;
    e=0;
    f=0;
    g=0;
elseif oldnew==4  %this is 2/3 column switchable 2 column UV detector 12/3 with EasiVial
    a=-39.982;
    b=0.2059;
    c=-0.00033031;
    d=2.2402E-7;
    e=-5.5887E-11;
    f=0;
    g=0;
elseif oldnew==5  %this is 2/3 column switchable 2 column RID detector 12/3 with EasiVial
    a=-45.63992636;
    b=0.2183448071;
    c=-0.0003307921861;
    d=2.116468266E-7;
    e=-4.962786325E-11;
    f=0;
    g=0;
elseif oldnew==6  %this is 2/3 column switchable 2 column UV from 1/2010
    a=-44.734588;
    b=0.2175808327;
    c=-0.0003343674405;
    d=2.169212995E-7;
    e=-5.156317144E-11;
    f=0;
    g=0;
elseif oldnew==7 %this is 2/3 column switchable 2 column RID from 1/2010
    a=-45.63992636;
    b=0.2183448071;
    c=-0.0003307921861;
    d=2.116468266E-7;
    e=-4.962786325E-11;
    f=0;
    g=0;
elseif oldnew==8 %this is 2/3 column switchable 2 column UV from 3/2010
    a=-43.58527992;
    b=0.2130353005;
    c=-.0003277485637;
    d=2.126715507E-7;
    e=-5.055083433E-11;
    f=0;
    g=0;
elseif oldnew==9 %this is 2/3 column switchable 2 column RID from 3/2010
    a=-44.70487894;
    b=0.214725017;
    c=-0.0003256570381;
    d=2.08442878E-7;
    e=-4.888727017E-11;
    f=0;
    g=0;
elseif oldnew==10 %this is 2/4 column switchable 4 column UV from 6/2010
    a=11.23177528;
    b=-0.003088471478;
    c=-2.485245588E-6;
    d=1.647091749E-9;
    e=-2.915523588E-13;
    f=0;
    g=0;
elseif oldnew==11 %this is 2/4 column switchable 4 column RID from 6/2010
    a=16.61365117;
    b=-0.01482312072;
    c=7.087251289E-6;
    d=-1.781351636E-9;
    e=1.622308918E-13;
    f=0;
    g=0;
elseif oldnew==12 %this is 2/4 column switchable 2 column UV from 8/2010
    a=12.83444155;
    b=-0.01174746014;
    c=2.847842538E-6;
    d=-1.364719786E-10;
    e=0;
    f=0;
    g=0;
elseif oldnew==13 %this is 2/4 column switchable 2 column RID from 8/2010
    a=12.92780856;
    b=-0.01164914189;
    c=2.699787596E-6;
    d=-9.135393069E-11;
    e=0;
    f=0;
    g=0;
elseif oldnew==14 %this is 2/4 column switchable 2 column UV from 4/2012
    a=-43.06288876;
    b=0.217921647;
    c=-0.0003465037035;
    d=2.322636072E-7;
    e=-5.702326995E-11;
    f=0;
    g=0;
elseif oldnew==15 %this is 2/4 column switchable 2 column RID from 4/2012
    a=-43.56799506;
    b=0.2169516643;
    c=-0.0003398439516;
    d=2.244442996E-7;
    e=-5.429912652E-11;
    f=0;
    g=0;
elseif oldnew==16 %this is 2/4 column switchable 2 column UV from 6/2012
    a=-44.01294913;
    b=0.2223288332;
    c=-0.0003540264025;
    d=2.378708798E-7;
    e=-5.856406193E-11;
    f=0;
    g=0;
elseif oldnew==17 %this is 2/4 column switchable 2 column RID from 6/2012
    a=-42.5525953;
    b=0.2131074991;
    c=-0.0003344944245;
    d=2.212285973E-7;
    e=-5.359688926E-11;
    f=0;
    g=0;
elseif oldnew==18   %this is 2/4 column switchable 2 column UV from 6/12 with different PS Mark Houwink for PaMS
    a=-43.80152565;
    b=0.2214330147;
    c=-0.0003526265431;
    d=2.369122574e-007;
    e=-5.832116187e-011;
    f=0;
    g=0;
elseif oldnew==19    %this is 2/4 column switchable 2 column RID from 6/12 with different PS Mark Houwink for PaMS
    a=-43.04167838;
    b=0.2150959881;
    c=-0.0003374825495;
    d=2.231928169e-007;
    e=-5.407358778e-011;
    f=0;
    g=0;
else
    print('Error in second argument.')
end

lnXaxis=a+b.*xTime+c.*xTime.^2+d.*xTime.^3+e.*xTime.^4+f.*xTime.^5+g.*xTime.^6;
MWXaxis=10.^lnXaxis;
end