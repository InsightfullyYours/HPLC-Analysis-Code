function [SampleNames TimeAxis UVData RIDData]=GetGPCData

%get the list of exported GPC data in current directory (.dat.asc)
a=dir('*.dat.asc');

%for each file get the filename and then extract the data
for i=1:size(a,1)
    Name=a(i).name;
    
    %get the numeric data and the header
    GPC=importdata(Name,'\r',13);
    SampleNames{1,i}=sscanf(GPC.textdata{3},'Sample ID:%s%s%s%s');
    SamplingRate=sscanf(GPC.textdata{8},'Sampling Rate:%f%f');
    DataPoints=sscanf(GPC.textdata{9},'Total Data Points:%f%f');
    Xmult=sscanf(GPC.textdata{12},'X Axis Multiplier:%f%f');
    Ymult=sscanf(GPC.textdata{13},'Y Axis Multiplier:%f%f');
    
    %pad UV and RID data with zeros if there are more data points in the
    %next set of data (this accounts for different collection times by zero
    %padding at THE END of the collection so as to not change the elution
    %time of the samples
    if DataPoints(1)==DataPoints(2)
        k=1;
    elseif DataPoints(1)>DataPoints(2)
        k=1;
    elseif DataPoints(1)<DataPoints(2)
        k=2;
    end
    %UV
    if i==1 || size(UVData,1)==DataPoints(1)
        UVData(:,i)=GPC.data(1:DataPoints(1),1).*Ymult(1);
        TimeAxis(:,i)=0:Xmult(1)./SamplingRate(1):DataPoints(k)./(SamplingRate(1).*60);
    elseif size(UVData,1)<DataPoints(1)
        UVData=[UVData;zeros(DataPoints(1)-size(UVData,1),size(UVData,2))];
        TimeAxis=[TimeAxis;zeros(DataPoints(k)-size(TimeAxis,1),size(TimeAxis,2))];
        
        UVData(:,i)=GPC.data(1:DataPoints(1),1).*Ymult(1);
        TimeAxis(:,i)=(0:1:DataPoints(k)-1)./(10.*60);
    elseif size(UVData,1)>DataPoints(1)
        intermediateUV=GPC.data(1:DataPoints(1),1).*Ymult(1);
        
        UVData(:,i)=[intermediateUV;zeros(size(UVData,1)-DataPoints(1),1)];
        TimeAxis(:,i)=(0:1:size(UVData,1)-1)./(10.*60);
    end
    %RID
    if i==1 || size(RIDData,1)==DataPoints(2)
        RIDData(:,i)=GPC.data(DataPoints(1)+1:DataPoints(1)+DataPoints(2)).*Ymult(2);
    elseif size(RIDData,1)<DataPoints(2)
        RIDData=[RIDData;zeros(DataPoints(2)-size(RIDData,1),size(RIDData,2))];

        RIDData(:,i)=GPC.data(DataPoints(1)+1:DataPoints(1)+DataPoints(2)).*Ymult(2);
    elseif size(RIDData,1)>DataPoints(2)
        intermediateRID=GPC.data(DataPoints(1)+1:DataPoints(1)+DataPoints(2)).*Ymult(2);

        RIDData(:,i)=[intermediateRID;zeros(size(RIDData,1)-DataPoints(2),1)];
    end
end
end

