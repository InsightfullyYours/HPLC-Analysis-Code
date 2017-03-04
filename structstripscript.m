% [fittedPnBA0 xaxisPnBA0 estimatesPnBA0 ManPnBA0 yDataPnBA0 yDataRatioPnBA0 xDataPnBA0]=structstrip(structPnBA0);
% [fittedPnBAbis0p5 xaxisPnBAbis0p5 estimatesPnBAbis0p5 ManPnBAbis0p5 yDataPnBAbis0p5 yDataRatioPnBAbis0p5 xDataPnBAbis0p5]=structstrip(structPnBAbis0p5);
% [fittedPnBAbis1p2 xaxisPnBAbis1p2 estimatesPnBAbis1p2 ManPnBAbis1p2 yDataPnBAbis1p2 yDataRatioPnBAbis1p2 xDataPnBAbis1p2]=structstrip(structPnBAbis1p2);
% [fittedPnBAbis4 xaxisPnBAbis4 estimatesPnBAbis4 ManPnBAbis4 yDataPnBAbis4 yDataRatioPnBAbis4 xDataPnBAbis4]=structstrip(structPnBAbis4);
% [fittedPnBAbis16 xaxisPnBAbis16 estimatesPnBAbis16 ManPnBAbis16 yDataPnBAbis16 yDataRatioPnBAbis16 xDataPnBAbis16]=structstrip(structPnBAbis16);
% 
% ManPnBAbis4(536:642,:)=NaN;
% fittedPnBAbis4(536:642,:)=NaN;
% xDataPnBAbis4(9,:)=NaN;
% xaxisPnBAbis4(536:642,:)=NaN;
% yDataPnBAbis4(9,:)=NaN;
% yDataRatioPnBAbis4(9,:)=NaN;
% 
% [fittedPnBAmono1 xaxisPnBAmono1 estimatesPnBAmono1 ManPnBAmono1 yDataPnBAmono1 yDataRatioPnBAmono1 xDataPnBAmono1]=structstrip(structPnBAmono1);
% [fittedPnBAmono2p4 xaxisPnBAmono2p4 estimatesPnBAmono2p4 ManPnBAmono2p4 yDataPnBAmono2p4 yDataRatioPnBAmono2p4 xDataPnBAmono2p4]=structstrip(structPnBAmono2p4);
% [fittedPnBAmono8 xaxisPnBAmono8 estimatesPnBAmono8 ManPnBAmono8 yDataPnBAmono8 yDataRatioPnBAmono8 xDataPnBAmono8]=structstrip(structPnBAmono8);
% [fittedPnBAmono32 xaxisPnBAmono32 estimatesPnBAmono32 ManPnBAmono32 yDataPnBAmono32 yDataRatioPnBAmono32 xDatPnBAmono32]=structstrip(structPnBAmono32);
% 
% [fittedPnBARIDbis xaxisPnBARIDbis estimatesPnBARIDbis ManPnBARIDbis yDataPnBARIDbis yDataRatioPnBARIDbis xDataPnBARIDbis]=structstrip(structPnBARIDbis);
% [fittedPnBARIDmono xaxisPnBARIDmono estimatesPnBARIDmono ManPnBARIDmono yDataPnBARIDmono yDataRatioPnBARIDmono xDataPnBARIDmono]=structstrip(structPnBARIDmono);
% [fittedPnBARIDctr xaxisPnBARIDctr estimatesPnBARIDctr ManPnBARIDctr yDataPnBARIDctr yDataRatioPnBARIDctr xDataPnBARIDctr]=structstrip(structPnBARIDctr);
% [fittedPnBAUVbis xaxisPnBAUVbis estimatesPnBAUVbis ManPnBAUVbis yDataPnBAUVbis yDataRatioPnBAUVbis xDataPnBAUVbis]=structstrip(structPnBAUVbis);
% [fittedPnBAUVmono xaxisPnBAUVmono estimatesPnBAUVmono ManPnBAUVmono yDataPnBAUVmono yDataRatioPnBAUVmono xDataPnBAUVmono]=structstrip(structPnBAUVmono);
% [fittedPnBAUVctr xaxisPnBAUVctr estimatesPnBAUVctr ManPnBAUVctr yDataPnBAUVctr yDataRatioPnBAUVctr xDataPnBAUVctr]=structstrip(structPnBAUVctr);


CombinationAreasPnBAbis=[yDataRatioPnBA0(:,1) yDataRatioPnBAbis0p5(:,1) yDataRatioPnBAbis1p2(:,1) yDataRatioPnBAbis4(:,1) yDataRatioPnBAbis16(:,1)];
CombinationAreasPnBAmono=[yDataRatioPnBAmono1(:,1) yDataRatioPnBAmono2p4(:,1) yDataRatioPnBAmono8(:,1) yDataRatioPnBAmono32(:,1)];
DepletionAreasPnBAmono=[yDataRatioPnBAmono1(:,2) yDataRatioPnBAmono2p4(:,2) yDataRatioPnBAmono8(:,2) yDataRatioPnBAmono32(:,2)];
DepletionAreasPnBAbis=[yDataRatioPnBA0(:,2) yDataRatioPnBAbis0p5(:,2) yDataRatioPnBAbis1p2(:,2) yDataRatioPnBAbis4(:,2) yDataRatioPnBAbis16(:,2)];
ScissionAreasPnBAbis=[yDataRatioPnBA0(:,3) yDataRatioPnBAbis0p5(:,3) yDataRatioPnBAbis1p2(:,3) yDataRatioPnBAbis4(:,3) yDataRatioPnBAbis16(:,3)];
ScissionAreasPnBAmono=[yDataRatioPnBAmono1(:,3) yDataRatioPnBAmono2p4(:,3) yDataRatioPnBAmono8(:,3) yDataRatioPnBAmono32(:,3)];

CombinationFittedAreasPnBAbis=[fittedPnBA0(:,1) fittedPnBAbis0p5(:,1) fittedPnBAbis1p2(:,1) fittedPnBAbis4(:,1) fittedPnBAbis16(:,1)];
CombinationFittedAreasPnBAmono=[fittedPnBAmono1(:,1) fittedPnBAmono2p4(:,1) fittedPnBAmono8(:,1) fittedPnBAmono32(:,1)];
DepletionFittedAreasPnBAmono=[fittedPnBAmono1(:,2) fittedPnBAmono2p4(:,2) fittedPnBAmono8(:,2) fittedPnBAmono32(:,2)];
DepletionFittedAreasPnBAbis=[fittedPnBA0(:,2) fittedPnBAbis0p5(:,2) fittedPnBAbis1p2(:,2) fittedPnBAbis4(:,2) fittedPnBAbis16(:,2)];
ScissionFittedAreasPnBAbis=[fittedPnBA0(:,3) fittedPnBAbis0p5(:,3) fittedPnBAbis1p2(:,3) fittedPnBAbis4(:,3) fittedPnBAbis16(:,3)];
ScissionFittedAreasPnBAmono=[fittedPnBAmono1(:,3) fittedPnBAmono2p4(:,3) fittedPnBAmono8(:,3) fittedPnBAmono32(:,3)];

CombinationEstimatesKAreasPnBAbis=[estimatesPnBA0(1,1) estimatesPnBAbis0p5(1,1) estimatesPnBAbis1p2(1,1) estimatesPnBAbis4(1,1) estimatesPnBAbis16(1,1)];
CombinationEstimatesKAreasPnBAmono=[estimatesPnBAmono1(1,1) estimatesPnBAmono2p4(1,1) estimatesPnBAmono8(1,1) estimatesPnBAmono32(1,1)];
DepletionEstimatesKAreasPnBAmono=[estimatesPnBAmono1(2,1) estimatesPnBAmono2p4(2,1) estimatesPnBAmono8(2,1) estimatesPnBAmono32(2,1)];
DepletionEstimatesKAreasPnBAbis=[estimatesPnBA0(2,1) estimatesPnBAbis0p5(2,1) estimatesPnBAbis1p2(2,1) estimatesPnBAbis4(2,1) estimatesPnBAbis16(2,1)];
ScissionEstimatesKAreasPnBAbis=[estimatesPnBA0(3,1) estimatesPnBAbis0p5(3,1) estimatesPnBAbis1p2(3,1) estimatesPnBAbis4(3,1) estimatesPnBAbis16(3,1)];
ScissionEstimatesKAreasPnBAmono=[estimatesPnBAmono1(3,1) estimatesPnBAmono2p4(3,1) estimatesPnBAmono8(3,1) estimatesPnBAmono32(3,1)];

CombinationEstimatesNAreasPnBAbis=[estimatesPnBA0(1,2) estimatesPnBAbis0p5(1,2) estimatesPnBAbis1p2(1,2) estimatesPnBAbis4(1,2) estimatesPnBAbis16(1,2)];
CombinationEstimatesNAreasPnBAmono=[estimatesPnBAmono1(1,2) estimatesPnBAmono2p4(1,2) estimatesPnBAmono8(1,2) estimatesPnBAmono32(1,2)];
DepletionEstimatesNAreasPnBAmono=[estimatesPnBAmono1(2,2) estimatesPnBAmono2p4(2,2) estimatesPnBAmono8(2,2) estimatesPnBAmono32(2,2)];
DepletionEstimatesNAreasPnBAbis=[estimatesPnBA0(2,2) estimatesPnBAbis0p5(2,2) estimatesPnBAbis1p2(2,2) estimatesPnBAbis4(2,2) estimatesPnBAbis16(2,2)];
ScissionEstimatesNAreasPnBAbis=[estimatesPnBA0(3,2) estimatesPnBAbis0p5(3,2) estimatesPnBAbis1p2(3,2) estimatesPnBAbis4(3,2) estimatesPnBAbis16(3,2)];
ScissionEstimatesNAreasPnBAmono=[estimatesPnBAmono1(3,2) estimatesPnBAmono2p4(3,2) estimatesPnBAmono8(3,2) estimatesPnBAmono32(3,2)];