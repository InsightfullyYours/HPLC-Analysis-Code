maxPS0=((max(AreaPS0(6100:6600,1))-max(AreaPS0(6100:6600,:)))./max(AreaPS0(6100:6600,1)))';
maxPSbis0p5=((max(AreaPSbis0p5(6100:6600,1))-max(AreaPSbis0p5(6100:6600,:)))./max(AreaPSbis0p5(6100:6600,1)))';
maxPSbis1p2=((max(AreaPSbis1p2(6100:6600,1))-max(AreaPSbis1p2(6100:6600,:)))./max(AreaPSbis1p2(6100:6600,1)))';
maxPSbis4=((max(AreaPSbis4(6100:6600,1))-max(AreaPSbis4(6100:6600,:)))./max(AreaPSbis4(6100:6600,1)))';
maxPSbis16=((max(AreaPSbis16(6100:6600,1))-max(AreaPSbis16(6100:6600,:)))./max(AreaPSbis16(6100:6600,1)))';
maxPSbis=[maxPS0 maxPSbis0p5 maxPSbis1p2 maxPSbis4 maxPSbis16];

maxPSmono1=((max(AreaPSmono1(6100:6600,1))-max(AreaPSmono1(6100:6600,:)))./max(AreaPSmono1(6100:6600,1)))';
maxPSmono2p4=((max(AreaPSmono2p4(6100:6600,1))-max(AreaPSmono2p4(6100:6600,:)))./max(AreaPSmono2p4(6100:6600,1)))';
maxPSmono8=((max(AreaPSmono8(6100:6600,1))-max(AreaPSmono8(6100:6600,:)))./max(AreaPSmono8(6100:6600,1)))';
maxPSmono32=((max(AreaPSmono32(6100:6600,1))-max(AreaPSmono32(6100:6600,:)))./max(AreaPSmono32(6100:6600,1)))';
maxPSmono=[maxPS0([1,5,7,9],:) maxPSmono1 maxPSmono2p4 maxPSmono8 maxPSmono32];

maxPnBA0=((max(AreaPnBA0(4600:5400,1))-max(AreaPnBA0(4600:5400,:)))./max(AreaPnBA0(4600:5400,1)))';
maxPnBAbis0p5=((max(AreaPnBAbis0p5(4600:5400,1))-max(AreaPnBAbis0p5(4600:5400,:)))./max(AreaPnBAbis0p5(4600:5400,1)))';
maxPnBAbis1p2=((max(AreaPnBAbis1p2(4600:5400,1))-max(AreaPnBAbis1p2(4600:5400,:)))./max(AreaPnBAbis1p2(4600:5400,1)))';
maxPnBAbis4=((max(AreaPnBAbis4(4600:5400,1))-max(AreaPnBAbis4(4600:5400,:)))./max(AreaPnBAbis4(4600:5400,1)))';
maxPnBAbis16=((max(AreaPnBAbis16(4600:5400,1))-max(AreaPnBAbis16(4600:5400,:)))./max(AreaPnBAbis16(4600:5400,1)))';
maxPnBAbis=[maxPnBA0 maxPnBAbis0p5 maxPnBAbis1p2 [maxPnBAbis4;NaN] maxPnBAbis16];

maxPnBAmono1=((max(AreaPnBAmono1(4600:5400,1))-max(AreaPnBAmono1(4600:5400,:)))./max(AreaPnBAmono1(4600:5400,1)))';
maxPnBAmono2p4=((max(AreaPnBAmono2p4(4600:5400,1))-max(AreaPnBAmono2p4(4600:5400,:)))./max(AreaPnBAmono2p4(4600:5400,1)))';
maxPnBAmono8=((max(AreaPnBAmono8(4600:5400,1))-max(AreaPnBAmono8(4600:5400,:)))./max(AreaPnBAmono8(4600:5400,1)))';
maxPnBAmono32=((max(AreaPnBAmono32(4600:5400,1))-max(AreaPnBAmono32(4600:5400,:)))./max(AreaPnBAmono32(4600:5400,1)))';
maxPnBAmono=[maxPnBA0([1,5,7,9],:) maxPnBAmono1 maxPnBAmono2p4 maxPnBAmono8 maxPnBAmono32];
disp('Done')