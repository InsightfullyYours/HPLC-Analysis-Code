load('D:\Documents and Settings\Nick\Desktop\Work\Data Analysis\Thesis Data\10-AreaNormalizedAdjustedtoIntSt.mat')

DifferencePBDRID=AreaPBDRID-repmat(AreaPBDRID(:,1),1,size(AreaPBDRID,2));
DifferencePBDUV=AreaPBDUV-repmat(AreaPBDUV(:,1),1,size(AreaPBDUV,2));
DifferencePIBRID=AreaPIBRID-repmat(AreaPIBRID(:,1),1,size(AreaPIBRID,2));
DifferencePIBUV=AreaPIBUV-repmat(AreaPIBUV(:,1),1,size(AreaPIBUV,2));
DifferencePMMARID=AreaPMMARID-repmat(AreaPMMARID(:,1),1,size(AreaPMMARID,2));
DifferencePMMAUV=AreaPMMAUV-repmat(AreaPMMAUV(:,1),1,size(AreaPMMAUV,2));
DifferencePSRID=AreaPSRID-repmat(AreaPSRID(:,1),1,size(AreaPSRID,2));
DifferencePSUV=AreaPSUV-repmat(AreaPSUV(:,1),1,size(AreaPSUV,2));
DifferencePSnewRID=AreaPSnewRID-repmat(AreaPSnewRID(:,1),1,size(AreaPSnewRID,2));
DifferencePSnewUV=AreaPSnewUV-repmat(AreaPSnewUV(:,1),1,size(AreaPSnewUV,2));
DifferencePamSRID=AreaPamSRID-repmat(AreaPamSRID(:,1),1,size(AreaPamSRID,2));
DifferencePamSUV=AreaPamSUV-repmat(AreaPamSUV(:,1),1,size(AreaPamSUV,2));
DifferencePnBARID=AreaPnBARID-repmat(AreaPnBARID(:,1),1,size(AreaPnBARID,2));
DifferencePnBAUV=AreaPnBAUV-repmat(AreaPnBAUV(:,1),1,size(AreaPnBAUV,2));

DifferencePSmono1=AreaPSmono1-repmat(AreaPSmono1(:,1),1,size(AreaPSmono1,2));
DifferencePSmono2p4=AreaPSmono2p4-repmat(AreaPSmono2p4(:,1),1,size(AreaPSmono2p4,2));
DifferencePSmono32=AreaPSmono32-repmat(AreaPSmono32(:,1),1,size(AreaPSmono32,2));
DifferencePSmono8=AreaPSmono8-repmat(AreaPSmono8(:,1),1,size(AreaPSmono8,2));
DifferencePS0=AreaPS0-repmat(AreaPS0(:,1),1,size(AreaPS0,2));
DifferencePSbis0p5=AreaPSbis0p5-repmat(AreaPSbis0p5(:,1),1,size(AreaPSbis0p5,2));
DifferencePSbis16=AreaPSbis16-repmat(AreaPSbis16(:,1),1,size(AreaPSbis16,2));
DifferencePSbis1p2=AreaPSbis1p2-repmat(AreaPSbis1p2(:,1),1,size(AreaPSbis1p2,2));
DifferencePSbis4=AreaPSbis4-repmat(AreaPSbis4(:,1),1,size(AreaPSbis4,2));

DifferencePnBAmono1=AreaPnBAmono1-repmat(AreaPnBAmono1(:,1),1,size(AreaPnBAmono1,2));
DifferencePnBAmono2p4=AreaPnBAmono2p4-repmat(AreaPnBAmono2p4(:,1),1,size(AreaPnBAmono2p4,2));
DifferencePnBAmono32=AreaPnBAmono32-repmat(AreaPnBAmono32(:,1),1,size(AreaPnBAmono32,2));
DifferencePnBAmono8=AreaPnBAmono8-repmat(AreaPnBAmono8(:,1),1,size(AreaPnBAmono8,2));
DifferencePnBA0=AreaPnBA0-repmat(AreaPnBA0(:,1),1,size(AreaPnBA0,2));
DifferencePnBAbis0p5=AreaPnBAbis0p5-repmat(AreaPnBAbis0p5(:,1),1,size(AreaPnBAbis0p5,2));
DifferencePnBAbis16=AreaPnBAbis16-repmat(AreaPnBAbis16(:,1),1,size(AreaPnBAbis16,2));
DifferencePnBAbis1p2=AreaPnBAbis1p2-repmat(AreaPnBAbis1p2(:,1),1,size(AreaPnBAbis1p2,2));
DifferencePnBAbis4=AreaPnBAbis4-repmat(AreaPnBAbis4(:,1),1,size(AreaPnBAbis4,2));

save 11-DifferenceAdjustedtoIntSt
clear
load('D:\Documents and Settings\Nick\Desktop\Work\Data Analysis\Thesis Data\10-AreaNormalizedAdjustedtoBigPeak.mat')
DifferencePBDRID=AreaPBDRID-repmat(AreaPBDRID(:,1),1,size(AreaPBDRID,2));
DifferencePBDUV=AreaPBDUV-repmat(AreaPBDUV(:,1),1,size(AreaPBDUV,2));
DifferencePIBRID=AreaPIBRID-repmat(AreaPIBRID(:,1),1,size(AreaPIBRID,2));
DifferencePIBUV=AreaPIBUV-repmat(AreaPIBUV(:,1),1,size(AreaPIBUV,2));
DifferencePMMARID=AreaPMMARID-repmat(AreaPMMARID(:,1),1,size(AreaPMMARID,2));
DifferencePMMAUV=AreaPMMAUV-repmat(AreaPMMAUV(:,1),1,size(AreaPMMAUV,2));
DifferencePSRID=AreaPSRID-repmat(AreaPSRID(:,1),1,size(AreaPSRID,2));
DifferencePSUV=AreaPSUV-repmat(AreaPSUV(:,1),1,size(AreaPSUV,2));
DifferencePSnewRID=AreaPSnewRID-repmat(AreaPSnewRID(:,1),1,size(AreaPSnewRID,2));
DifferencePSnewUV=AreaPSnewUV-repmat(AreaPSnewUV(:,1),1,size(AreaPSnewUV,2));
DifferencePamSRID=AreaPamSRID-repmat(AreaPamSRID(:,1),1,size(AreaPamSRID,2));
DifferencePamSUV=AreaPamSUV-repmat(AreaPamSUV(:,1),1,size(AreaPamSUV,2));
DifferencePnBARID=AreaPnBARID-repmat(AreaPnBARID(:,1),1,size(AreaPnBARID,2));
DifferencePnBAUV=AreaPnBAUV-repmat(AreaPnBAUV(:,1),1,size(AreaPnBAUV,2));

DifferencePSmono1=AreaPSmono1-repmat(AreaPSmono1(:,1),1,size(AreaPSmono1,2));
DifferencePSmono2p4=AreaPSmono2p4-repmat(AreaPSmono2p4(:,1),1,size(AreaPSmono2p4,2));
DifferencePSmono32=AreaPSmono32-repmat(AreaPSmono32(:,1),1,size(AreaPSmono32,2));
DifferencePSmono8=AreaPSmono8-repmat(AreaPSmono8(:,1),1,size(AreaPSmono8,2));
DifferencePS0=AreaPS0-repmat(AreaPS0(:,1),1,size(AreaPS0,2));
DifferencePSbis0p5=AreaPSbis0p5-repmat(AreaPSbis0p5(:,1),1,size(AreaPSbis0p5,2));
DifferencePSbis16=AreaPSbis16-repmat(AreaPSbis16(:,1),1,size(AreaPSbis16,2));
DifferencePSbis1p2=AreaPSbis1p2-repmat(AreaPSbis1p2(:,1),1,size(AreaPSbis1p2,2));
DifferencePSbis4=AreaPSbis4-repmat(AreaPSbis4(:,1),1,size(AreaPSbis4,2));

DifferencePnBAmono1=AreaPnBAmono1-repmat(AreaPnBAmono1(:,1),1,size(AreaPnBAmono1,2));
DifferencePnBAmono2p4=AreaPnBAmono2p4-repmat(AreaPnBAmono2p4(:,1),1,size(AreaPnBAmono2p4,2));
DifferencePnBAmono32=AreaPnBAmono32-repmat(AreaPnBAmono32(:,1),1,size(AreaPnBAmono32,2));
DifferencePnBAmono8=AreaPnBAmono8-repmat(AreaPnBAmono8(:,1),1,size(AreaPnBAmono8,2));
DifferencePnBA0=AreaPnBA0-repmat(AreaPnBA0(:,1),1,size(AreaPnBA0,2));
DifferencePnBAbis0p5=AreaPnBAbis0p5-repmat(AreaPnBAbis0p5(:,1),1,size(AreaPnBAbis0p5,2));
DifferencePnBAbis16=AreaPnBAbis16-repmat(AreaPnBAbis16(:,1),1,size(AreaPnBAbis16,2));
DifferencePnBAbis1p2=AreaPnBAbis1p2-repmat(AreaPnBAbis1p2(:,1),1,size(AreaPnBAbis1p2,2));
DifferencePnBAbis4=AreaPnBAbis4-repmat(AreaPnBAbis4(:,1),1,size(AreaPnBAbis4,2));


save 11-DifferenceAdjustedtoBigPeak
clear