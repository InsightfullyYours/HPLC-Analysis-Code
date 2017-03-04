%this was first; I don't need to do it every time
% [linRIDBis1hr,HistRIDBis1hr]=Histogram(MWRIDaxis(:,1),RIDBis1hr);
% [linRIDBis3hr,HistRIDBis3hr]=Histogram(MWRIDaxis(:,1)./MPS,RIDBis3hr);
% [linRIDMono1hr,HistRIDMono1hr]=Histogram(MWRIDaxis(:,1)./MPS,RIDMono1hr);
% [linRIDMono3hr,HistRIDMono3hr]=Histogram(MWRIDaxis(:,1)./MPS,RIDMono3hr);
% 
% [linUVBis1hr,HistUVBis1hr]=Histogram(MWUVaxis(:,1)./MPS,UVBis1hr);
% [linUVBis3hr,HistUVBis3hr]=Histogram(MWUVaxis(:,1)./MPS,UVBis3hr);
% [linUVMono1hr,HistUVMono1hr]=Histogram(MWUVaxis(:,1)./MPS,UVMono1hr);
% [linUVMono3hr,HistUVMono3hr]=Histogram(MWUVaxis(:,1)./MPS,UVMono3hr);
% 
% AreaRIDBis1hr=AreaNormalize(linRIDBis1hr,RIDBis1hr,[6161:9950]);
% AreaRIDBis3hr=AreaNormalize(linRIDBis3hr,RIDBis3hr,[6161:9950]);
% AreaRIDMono1hr=AreaNormalize(linRIDMono1hr,RIDMono1hr,[6161:9950]);
% AreaRIDMono3hr=AreaNormalize(linRIDMono3hr,RIDMono3hr,[6161:9950]);
% 
% AreaUVBis1hr=AreaNormalize(linUVBis1hr,UVBis1hr,[6161:9950]);
% AreaUVBis3hr=AreaNormalize(linUVBis3hr,UVBis3hr,[6161:9950]);
% AreaUVMono1hr=AreaNormalize(linUVBis1hr,UVMono1hr,[6161:9950]);
% AreaUVMono3hr=AreaNormalize(linUVBis3hr,UVMono3hr,[6161:9950]);

ErrAreaRIDBis1hr=std(AreaRIDBis1hr(6161:9950,:),0,2);
ErrAreaRIDBis3hr=std(AreaRIDBis3hr(6161:9950,:),0,2);
ErrAreaRIDMono1hr=std(AreaRIDMono1hr(6161:9950,:),0,2);
ErrAreaRIDMono3hr=std(AreaRIDMono3hr(6161:9950,:),0,2);

ErrAreaUVBis1hr=std(AreaUVBis1hr(6161:9950,:),0,2);
ErrAreaUVBis3hr=std(AreaUVBis3hr(6161:9950,:),0,2);
ErrAreaUVMono1hr=std(AreaUVMono1hr(6161:9950,:),0,2);
ErrAreaUVMono3hr=std(AreaUVMono3hr(6161:9950,:),0,2);

ErrAreaRIDBis1hr=sqrt(sum(ErrAreaRIDBis1hr.^2,1));
ErrAreaRIDBis3hr=sqrt(sum(ErrAreaRIDBis3hr.^2,1));
ErrAreaRIDMono1hr=sqrt(sum(ErrAreaRIDMono1hr.^2,1));
ErrAreaRIDMono3hr=sqrt(sum(ErrAreaRIDMono3hr.^2,1));

ErrAreaUVBis1hr=sqrt(sum(ErrAreaUVBis1hr.^2,1));
ErrAreaUVBis3hr=sqrt(sum(ErrAreaUVBis3hr.^2,1));
ErrAreaUVMono1hr=sqrt(sum(ErrAreaUVMono1hr.^2,1));
ErrAreaUVMono3hr=sqrt(sum(ErrAreaUVMono3hr.^2,1));

ErrAreaRIDBis1hr=sqrt(2.*ErrAreaRIDBis1hr.^2);
ErrAreaRIDBis3hr=sqrt(2.*ErrAreaRIDBis3hr.^2);
ErrAreaRIDMono1hr=sqrt(2.*ErrAreaRIDMono1hr.^2);
ErrAreaRIDMono3hr=sqrt(2.*ErrAreaRIDMono3hr.^2);

ErrAreaUVBis1hr=sqrt(2.*ErrAreaUVBis1hr.^2);
ErrAreaUVBis3hr=sqrt(2.*ErrAreaUVBis3hr.^2);
ErrAreaUVMono1hr=sqrt(2.*ErrAreaUVMono1hr.^2);
ErrAreaUVMono3hr=sqrt(2.*ErrAreaUVMono3hr.^2);

RealAreaRIDBis1hr=AreaRIDBis1hr(6161:9950,:)-repmat(mean(AreaRIDBis1hr(6161:9950,:),2),1,3);
RealAreaRIDBis3hr=AreaRIDBis3hr(6161:9950,:)-repmat(mean(AreaRIDBis3hr(6161:9950,:),2),1,3);
RealAreaRIDMono1hr=AreaRIDMono1hr(6161:9950,:)-repmat(mean(AreaRIDMono1hr(6161:9950,:),2),1,3);
RealAreaRIDMono3hr=AreaRIDMono3hr(6161:9950,:)-repmat(mean(AreaRIDMono3hr(6161:9950,:),2),1,3);

RealAreaUVBis1hr=AreaUVBis1hr(6161:9950,:)-repmat(mean(AreaUVBis1hr(6161:9950,:),2),1,3);
RealAreaUVBis3hr=AreaUVBis3hr(6161:9950,:)-repmat(mean(AreaUVBis3hr(6161:9950,:),2),1,3);
RealAreaUVMono1hr=AreaUVMono1hr(6161:9950,:)-repmat(mean(AreaUVMono1hr(6161:9950,:),2),1,3);
RealAreaUVMono3hr=AreaUVMono3hr(6161:9950,:)-repmat(mean(AreaUVMono3hr(6161:9950,:),2),1,3);

[~,DiffAreaRIDBis1hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaRIDBis1hr,[1:2500]);
[~,DiffAreaRIDBis1hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaRIDBis1hr,[2501:3000]);
[~,DiffAreaRIDBis1hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaRIDBis1hr,[3001:3790]);
DiffAreaRIDBis1hr=[zeros(3,1) DiffAreaRIDBis1hr];

[~,DiffAreaRIDBis3hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaRIDBis3hr,[1:2500]);
[~,DiffAreaRIDBis3hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaRIDBis3hr,[2501:3000]);
[~,DiffAreaRIDBis3hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaRIDBis3hr,[3001:3790]);
DiffAreaRIDBis3hr=[zeros(3,1) DiffAreaRIDBis3hr];

[~,DiffAreaRIDMono1hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaRIDMono1hr,[1:2500]);
[~,DiffAreaRIDMono1hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaRIDMono1hr,[2501:3000]);
[~,DiffAreaRIDMono1hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaRIDMono1hr,[3001:3790]);
DiffAreaRIDMono1hr=[zeros(3,1) DiffAreaRIDMono1hr];

[~,DiffAreaRIDMono3hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaRIDMono3hr,[1:2500]);
[~,DiffAreaRIDMono3hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaRIDMono3hr,[2501:3000]);
[~,DiffAreaRIDMono3hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaRIDMono3hr,[3001:3790]);
DiffAreaRIDMono3hr=[zeros(3,1) DiffAreaRIDMono3hr];

[~,DiffAreaUVBis1hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaUVBis1hr,[1:2500]);
[~,DiffAreaUVBis1hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaUVBis1hr,[2501:3000]);
[~,DiffAreaUVBis1hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaUVBis1hr,[3001:3790]);
DiffAreaUVBis1hr=[zeros(3,1) DiffAreaUVBis1hr];

[~,DiffAreaUVBis3hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaUVBis3hr,[1:2500]);
[~,DiffAreaUVBis3hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaUVBis3hr,[2501:3000]);
[~,DiffAreaUVBis3hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaUVBis3hr,[3001:3790]);
DiffAreaUVBis3hr=[zeros(3,1) DiffAreaUVBis3hr];

[~,DiffAreaUVMono1hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaUVMono1hr,[1:2500]);
[~,DiffAreaUVMono1hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaUVMono1hr,[2501:3000]);
[~,DiffAreaUVMono1hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaUVMono1hr,[3001:3790]);
DiffAreaUVMono1hr=[zeros(3,1) DiffAreaUVMono1hr];

[~,DiffAreaUVMono3hr(1,:)]=AreaNormalize((1:1:3790)',RealAreaUVMono3hr,[1:2500]);
[~,DiffAreaUVMono3hr(2,:)]=AreaNormalize((1:1:3790)',RealAreaUVMono3hr,[2501:3000]);
[~,DiffAreaUVMono3hr(3,:)]=AreaNormalize((1:1:3790)',RealAreaUVMono3hr,[3001:3790]);
DiffAreaUVMono3hr=[zeros(3,1) DiffAreaUVMono3hr];

figure
errorbar(DiffAreaRIDBis1hr',repmat(ErrAreaRIDBis1hr,4,3))
figure
errorbar(DiffAreaRIDBis3hr',repmat(ErrAreaRIDBis3hr,4,3))
figure
errorbar(DiffAreaRIDMono1hr',repmat(ErrAreaRIDMono1hr,4,3))
figure
errorbar(DiffAreaRIDMono3hr',repmat(ErrAreaRIDMono3hr,4,3))
figure
errorbar(DiffAreaUVBis1hr',repmat(ErrAreaUVBis1hr,4,3))
figure
errorbar(DiffAreaUVBis3hr',repmat(ErrAreaUVBis3hr,4,3))
figure
errorbar(DiffAreaUVMono1hr',repmat(ErrAreaUVMono1hr,4,3))
figure
errorbar(DiffAreaUVMono3hr',repmat(ErrAreaUVMono3hr,4,3))

% 
% RealAreaRIDBis1hr=sqrt(sum(RealAreaRIDBis1hr.^2,1));
% RealAreaRIDBis3hr=sqrt(sum(RealAreaRIDBis3hr.^2,1));
% RealAreaRIDMono1hr=sqrt(sum(RealAreaRIDMono1hr.^2,1));
% RealAreaRIDMono3hr=sqrt(sum(RealAreaRIDMono3hr.^2,1));
% 
% RealAreaUVBis1hr=sqrt(sum(RealAreaUVBis1hr.^2,1));
% RealAreaUVBis3hr=sqrt(sum(RealAreaUVBis3hr.^2,1));
% RealAreaUVMono1hr=sqrt(sum(RealAreaUVMono1hr.^2,1));
% RealAreaUVMono3hr=sqrt(sum(RealAreaUVMono3hr.^2,1));
% 
% RealAreaRIDBis1hr=sqrt(2.*RealAreaRIDBis1hr.^2);
% RealAreaRIDBis3hr=sqrt(2.*RealAreaRIDBis3hr.^2);
% RealAreaRIDMono1hr=sqrt(2.*RealAreaRIDMono1hr.^2);
% RealAreaRIDMono3hr=sqrt(2.*RealAreaRIDMono3hr.^2);
% 
% RealAreaUVBis1hr=sqrt(2.*RealAreaUVBis1hr.^2);
% RealAreaUVBis3hr=sqrt(2.*RealAreaUVBis3hr.^2);
% RealAreaUVMono1hr=sqrt(2.*RealAreaUVMono1hr.^2);
% RealAreaUVMono3hr=sqrt(2.*RealAreaUVMono3hr.^2);
% 
% 
% 
% 
