[linRIDBis1hr,HistRIDBis1hr]=Histogram(MWRIDaxis(:,1),RIDBis1hr);
[linRIDBis3hr,HistRIDBis3hr]=Histogram(MWRIDaxis(:,1)./MPS,RIDBis3hr);
[linRIDMono1hr,HistRIDMono1hr]=Histogram(MWRIDaxis(:,1)./MPS,RIDMono1hr);
[linRIDMono3hr,HistRIDMono3hr]=Histogram(MWRIDaxis(:,1)./MPS,RIDMono3hr);

[linUVBis1hr,HistUVBis1hr]=Histogram(MWUVaxis(:,1)./MPS,UVBis1hr);
[linUVBis3hr,HistUVBis3hr]=Histogram(MWUVaxis(:,1)./MPS,UVBis3hr);
[linUVMono1hr,HistUVMono1hr]=Histogram(MWUVaxis(:,1)./MPS,UVMono1hr);
[linUVMono3hr,HistUVMono3hr]=Histogram(MWUVaxis(:,1)./MPS,UVMono3hr);

AreaRIDBis1hr=AreaNormalize(linRIDBis1hr,RIDBis1hr,[6161:9950]);
AreaRIDBis3hr=AreaNormalize(linRIDBis3hr,RIDBis3hr,[6161:9950]);
AreaRIDMono1hr=AreaNormalize(linRIDMono1hr,RIDMono1hr,[6161:9950]);
AreaRIDMono3hr=AreaNormalize(linRIDMono3hr,RIDMono3hr,[6161:9950]);

AreaUVBis1hr=AreaNormalize(linUVBis1hr,UVBis1hr,[6161:9950]);
AreaUVBis3hr=AreaNormalize(linUVBis3hr,UVBis3hr,[6161:9950]);
AreaUVMono1hr=AreaNormalize(linUVBis1hr,UVMono1hr,[6161:9950]);
AreaUVMono3hr=AreaNormalize(linUVBis3hr,UVMono3hr,[6161:9950]);