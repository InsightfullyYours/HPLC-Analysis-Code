
[fittedPnBA0 xaxisPnBA0 estimatesPnBA0 ManPnBA0]=structstrip(structPnBA0);
    ManPnBA0=[ManPnBA0; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBA0,1),3)];
    fittedPnBA0=[fittedPnBA0; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBA0,1),3)];
[fittedPnBAbis0p5 xaxisPnBAbis0p5 estimatesPnBAbis0p5 ManPnBAbis0p5]=structstrip(structPnBAbis0p5);
    ManPnBAbis0p5=[ManPnBAbis0p5; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAbis0p5,1),3)];
    fittedPnBAbis0p5=[fittedPnBAbis0p5; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAbis0p5,1),3)];
[fittedPnBAbis1p2 xaxisPnBAbis1p2 estimatesPnBAbis1p2 ManPnBAbis1p2]=structstrip(structPnBAbis1p2);
    ManPnBAbis1p2=[ManPnBAbis1p2; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAbis1p2,1),3)];
    fittedPnBAbis1p2=[fittedPnBAbis1p2; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAbis1p2,1),3)];
[fittedPnBAbis4 xaxisPnBAbis4 estimatesPnBAbis4 ManPnBAbis4]=structstrip(structPnBAbis4);
    ManPnBAbis4=[ManPnBAbis4; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAbis4,1),3)];
    fittedPnBAbis4=[fittedPnBAbis4; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAbis4,1),3)];
[fittedPnBAbis16 xaxisPnBAbis16 estimatesPnBAbis16 ManPnBAbis16]=structstrip(structPnBAbis16);
    ManPnBAbis16=[ManPnBAbis16; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAbis16,1),3)];
    fittedPnBAbis16=[fittedPnBAbis16; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAbis16,1),3)];

[fittedPnBAmono1 xaxisPnBAmono1 estimatesPnBAmono1 ManPnBAmono1]=structstrip(structPnBAmono1);
    ManPnBAmono1=[ManPnBAmono1; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAmono1,1),3)];
    fittedPnBAmono1=[fittedPnBAmono1; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAmono1,1),3)];
[fittedPnBAmono2p4 xaxisPnBAmono2p4 estimatesPnBAmono2p4 ManPnBAmono2p4]=structstrip(structPnBAmono2p4);
    ManPnBAmono2p4=[ManPnBAmono2p4; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAmono2p4,1),3)];
    fittedPnBAmono2p4=[fittedPnBAmono2p4; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAmono2p4,1),3)];
[fittedPnBAmono8 xaxisPnBAmono8 estimatesPnBAmono8 ManPnBAmono8]=structstrip(structPnBAmono8);
    ManPnBAmono8=[ManPnBAmono8; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAmono8,1),3)];
    fittedPnBAmono8=[fittedPnBAmono8; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAmono8,1),3)];
[fittedPnBAmono32 xaxisPnBAmono32 estimatesPnBAmono32 ManPnBAmono32]=structstrip(structPnBAmono32);
    ManPnBAmono32=[ManPnBAmono32; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAmono32,1),3)];
    fittedPnBAmono32=[fittedPnBAmono32; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAmono32,1),3)];

[fittedPnBAUVbis xaxisPnBAUVbis estimatesPnBAUVbis ManPnBAUVbis]=structstrip(structPnBAUVbis);
    ManPnBAUVbis=[ManPnBAUVbis; NaN.*zeros(size(ManPnBAUVctr,1)-size(ManPnBAUVbis,1),3)];
    fittedPnBAUVbis=[fittedPnBAUVbis; NaN.*zeros(size(fittedPnBAUVctr,1)-size(fittedPnBAUVbis,1),3)];
[fittedPnBAUVmono xaxisPnBAUVmono estimatesPnBAUVmono ManPnBAUVmono]=structstrip(structPnBAUVmono);
[fittedPnBAUVctr xaxisPnBAUVctr estimatesPnBAUVctr ManPnBAUVctr]=structstrip(structPnBAUVctr);

Mancomb=[ManPnBA0(:,1) ManPnBAbis0p5(:,1) ManPnBAbis1p2(:,1) ManPnBAbis4(:,1) ManPnBAbis16(:,1) ManPnBAmono1(:,1) ManPnBAmono2p4(:,1) ManPnBAmono8(:,1) ManPnBAmono32(:,1) ManPnBAUVctr(:,1) ManPnBAUVbis(:,1) ManPnBAUVmono(:,1)];
Mandepl=[ManPnBA0(:,2) ManPnBAbis0p5(:,2) ManPnBAbis1p2(:,2) ManPnBAbis4(:,2) ManPnBAbis16(:,2) ManPnBAmono1(:,2) ManPnBAmono2p4(:,2) ManPnBAmono8(:,2) ManPnBAmono32(:,2) ManPnBAUVctr(:,2) ManPnBAUVbis(:,2) ManPnBAUVmono(:,2)];
Mandisp=[ManPnBA0(:,3) ManPnBAbis0p5(:,3) ManPnBAbis1p2(:,3) ManPnBAbis4(:,3) ManPnBAbis16(:,3) ManPnBAmono1(:,3) ManPnBAmono2p4(:,3) ManPnBAmono8(:,3) ManPnBAmono32(:,3) ManPnBAUVctr(:,3) ManPnBAUVbis(:,3) ManPnBAUVmono(:,3)];

fittedcomb=[fittedPnBA0(:,1) fittedPnBAbis0p5(:,1) fittedPnBAbis1p2(:,1) fittedPnBAbis4(:,1) fittedPnBAbis16(:,1) fittedPnBAmono1(:,1) fittedPnBAmono2p4(:,1) fittedPnBAmono8(:,1) fittedPnBAmono32(:,1) fittedPnBAUVctr(:,1) fittedPnBAUVbis(:,1) fittedPnBAUVmono(:,1)];
fitteddepl=[fittedPnBA0(:,2) fittedPnBAbis0p5(:,2) fittedPnBAbis1p2(:,2) fittedPnBAbis4(:,2) fittedPnBAbis16(:,2) fittedPnBAmono1(:,2) fittedPnBAmono2p4(:,2) fittedPnBAmono8(:,2) fittedPnBAmono32(:,2) fittedPnBAUVctr(:,2) fittedPnBAUVbis(:,2) fittedPnBAUVmono(:,2)];
fitteddisp=[fittedPnBA0(:,3) fittedPnBAbis0p5(:,3) fittedPnBAbis1p2(:,3) fittedPnBAbis4(:,3) fittedPnBAbis16(:,3) fittedPnBAmono1(:,3) fittedPnBAmono2p4(:,3) fittedPnBAmono8(:,3) fittedPnBAmono32(:,3) fittedPnBAUVctr(:,3) fittedPnBAUVbis(:,3) fittedPnBAUVmono(:,3)];

figure
plot(Mancomb,fittedcomb)
title('Combination')
figure
plot(Mandepl,fitteddepl)
title('Depletion')
figure
plot(Mandisp,fitteddisp)
title('Scission')


figure
plot(ManPnBA0,fittedPnBA0)
hold
plot(ManPnBAbis0p5,fittedPnBAbis0p5)
plot(ManPnBAbis1p2,fittedPnBAbis1p2)
plot(ManPnBAbis4,fittedPnBAbis4)
plot(ManPnBAbis16,fittedPnBAbis16)

plot(ManPnBAmono1,fittedPnBAmono1)
plot(ManPnBAmono2p4,fittedPnBAmono2p4)
plot(ManPnBAmono8,fittedPnBAmono8)
plot(ManPnBAmono32,fittedPnBAmono32)
