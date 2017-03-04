% load('D:\Documents and Settings\Nick\Desktop\Work\Data Analysis\Thesis Data\9-AllDataAdjustedtoIntSt.mat')
% 
% AreaPBDRID=AreaNormalize(linPBDRID,AreaPBDRID,[6160:9940]);
% AreaPBDUV=AreaNormalize(linPBDUV,AreaPBDUV,[6160:9940]);
% AreaPIBRID=AreaNormalize(linPIBRID,AreaPIBRID,[6160:9940]);
% AreaPIBUV=AreaNormalize(linPIBUV,AreaPIBUV,[6160:9940]);
% AreaPMMARID=AreaNormalize(linPMMARID,AreaPMMARID,[6160:9940]);
% AreaPMMAUV=AreaNormalize(linPMMAUV,AreaPMMAUV,[6160:9940]);
% AreaPSRID=AreaNormalize(linPSRID,AreaPSRID,[6160:9940]);
% AreaPSUV=AreaNormalize(linPSUV,AreaPSUV,[6160:9940]);
% AreaPSnewRID=AreaNormalize(linPSnewRID,AreaPSnewRID,[6160:9940]);
% AreaPSnewUV=AreaNormalize(linPSnewUV,AreaPSnewUV,[6160:9940]);
% AreaPamSRID=AreaNormalize(linPamSRID,AreaPamSRID,[6160:9940]);
% AreaPamSUV=AreaNormalize(linPamSUV,AreaPamSUV,[6160:9940]);
% AreaPnBARID=AreaNormalize(linPnBARID,AreaPnBARID,[6160:9940]);
% AreaPnBAUV=AreaNormalize(linPnBAUV,AreaPnBAUV,[6160:9940]);
% 
AreaPSmono1=AreaNormalize(linPSmono1,AreaPSmono1,[4000:6700]);
AreaPSmono2p4=AreaNormalize(linPSmono2p4,AreaPSmono2p4,[4000:6700]);
AreaPSmono32=AreaNormalize(linPSmono32,AreaPSmono32,[4000:6700]);
AreaPSmono8=AreaNormalize(linPSmono8,AreaPSmono8,[4000:6700]);
AreaPS0=AreaNormalize(linPS0,AreaPS0,[4000:6700]);
AreaPSbis0p5=AreaNormalize(linPSbis0p5,AreaPSbis0p5,[4000:6700]);
AreaPSbis16=AreaNormalize(linPSbis16,AreaPSbis16,[4000:6700]);
AreaPSbis1p2=AreaNormalize(linPSbis1p2,AreaPSbis1p2,[4000:6700]);
AreaPSbis4=AreaNormalize(linPSbis4,AreaPSbis4,[4000:6700]);
% 
% AreaPnBAmono1=AreaNormalize(linPnBAmono1,AreaPnBAmono1,[2935:5490]);
% AreaPnBAmono2p4=AreaNormalize(linPnBAmono2p4,AreaPnBAmono2p4,[2935:5490]);
% AreaPnBAmono32=AreaNormalize(linPnBAmono32,AreaPnBAmono32,[2935:5490]);
% AreaPnBAmono8=AreaNormalize(linPnBAmono8,AreaPnBAmono8,[2935:5490]);
% AreaPnBA0=AreaNormalize(linPnBA0,AreaPnBA0,[2935:5490]);
% AreaPnBAbis0p5=AreaNormalize(linPnBAbis0p5,AreaPnBAbis0p5,[2935:5490]);
% AreaPnBAbis16=AreaNormalize(linPnBAbis16,AreaPnBAbis16,[2935:5490]);
% AreaPnBAbis1p2=AreaNormalize(linPnBAbis1p2,AreaPnBAbis1p2,[2935:5490]);
% AreaPnBAbis4=AreaNormalize(linPnBAbis4,AreaPnBAbis4,[2935:5490]);
% 
% save 10-AreaNormalizedAdjustedtoIntSt
% clear
% load('D:\Documents and Settings\Nick\Desktop\Work\Data Analysis\Thesis Data\9-AllDataAdjustedtoPeak.mat')
% AreaPBDRID=AreaNormalize(linPBDRID,AreaPBDRID,[6160:9940]);
% AreaPBDUV=AreaNormalize(linPBDUV,AreaPBDUV,[6160:9940]);
% AreaPIBRID=AreaNormalize(linPIBRID,AreaPIBRID,[6160:9940]);
% AreaPIBUV=AreaNormalize(linPIBUV,AreaPIBUV,[6160:9940]);
% AreaPMMARID=AreaNormalize(linPMMARID,AreaPMMARID,[6160:9940]);
% AreaPMMAUV=AreaNormalize(linPMMAUV,AreaPMMAUV,[6160:9940]);
% AreaPSRID=AreaNormalize(linPSRID,AreaPSRID,[6160:9940]);
% AreaPSUV=AreaNormalize(linPSUV,AreaPSUV,[6160:9940]);
% AreaPSnewRID=AreaNormalize(linPSnewRID,AreaPSnewRID,[6160:9940]);
% AreaPSnewUV=AreaNormalize(linPSnewUV,AreaPSnewUV,[6160:9940]);
% AreaPamSRID=AreaNormalize(linPamSRID,AreaPamSRID,[6160:9940]);
% AreaPamSUV=AreaNormalize(linPamSUV,AreaPamSUV,[6160:9940]);
% AreaPnBARID=AreaNormalize(linPnBARID,AreaPnBARID,[6160:9940]);
% AreaPnBAUV=AreaNormalize(linPnBAUV,AreaPnBAUV,[6160:9940]);
% 
% AreaPSmono1=AreaNormalize(linPSmono1,AreaPSmono1,[2935:6720]);
% AreaPSmono2p4=AreaNormalize(linPSmono2p4,AreaPSmono2p4,[2935:6720]);
% AreaPSmono32=AreaNormalize(linPSmono32,AreaPSmono32,[2935:6720]);
% AreaPSmono8=AreaNormalize(linPSmono8,AreaPSmono8,[2935:6720]);
% AreaPS0=AreaNormalize(linPS0,AreaPS0,[2935:6720]);
% AreaPSbis0p5=AreaNormalize(linPSbis0p5,AreaPSbis0p5,[2935:6720]);
% AreaPSbis16=AreaNormalize(linPSbis16,AreaPSbis16,[2935:6720]);
% AreaPSbis1p2=AreaNormalize(linPSbis1p2,AreaPSbis1p2,[2935:6720]);
% AreaPSbis4=AreaNormalize(linPSbis4,AreaPSbis4,[2935:6720]);

% AreaPnBAmono1=AreaNormalize(linPnBAmono1(:,1),AreaPnBAmono1,[2935:5490]);
% AreaPnBAmono2p4=AreaNormalize(linPnBAmono2p4(:,1),AreaPnBAmono2p4,[2935:5490]);
% AreaPnBAmono32=AreaNormalize(linPnBAmono32(:,1),AreaPnBAmono32,[2935:5490]);
% AreaPnBAmono8=AreaNormalize(linPnBAmono8(:,1),AreaPnBAmono8,[2935:5490]);
% AreaPnBA0=AreaNormalize(linPnBA0(:,1),AreaPnBA0,[2935:5490]);
% AreaPnBAbis0p5=AreaNormalize(linPnBAbis0p5(:,1),AreaPnBAbis0p5,[2935:5490]);
% AreaPnBAbis16=AreaNormalize(linPnBAbis16(:,1),AreaPnBAbis16,[2935:5490]);
% AreaPnBAbis1p2=AreaNormalize(linPnBAbis1p2(:,1),AreaPnBAbis1p2,[2935:5490]);
% AreaPnBAbis4=AreaNormalize(linPnBAbis4(:,1),AreaPnBAbis4,[2935:5490]);

% 
% save 10-AreaNormalizedAdjustedtoBigPeak
% clear