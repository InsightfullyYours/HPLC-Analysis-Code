AreaPS0(:,1)=HeightNorm(AreaPS0(:,1),AreaPS0(:,1),6100:6600);
AreaPSbis0p5(:,1)=HeightNorm(AreaPSbis0p5(:,1),AreaPS0(:,1),6100:6600);
AreaPSbis1p2(:,1)=HeightNorm(AreaPSbis1p2(:,1),AreaPS0(:,1),6100:6600);
AreaPSbis4(:,1)=HeightNorm(AreaPSbis4(:,1),AreaPS0(:,1),6100:6600);
AreaPSbis16(:,1)=HeightNorm(AreaPSbis16(:,1),AreaPS0(:,1),6100:6600);

AreaPSmono1(:,1)=HeightNorm(AreaPSmono1(:,1),AreaPS0(:,1),6100:6600);
AreaPSmono2p4(:,1)=HeightNorm(AreaPSmono2p4(:,1),AreaPS0(:,1),6100:6600);
AreaPSmono8(:,1)=HeightNorm(AreaPSmono8(:,1),AreaPS0(:,1),6100:6600);
AreaPSmono32(:,1)=HeightNorm(AreaPSmono32(:,1),AreaPS0(:,1),6100:6600);

plot([AreaPS0(:,1) AreaPSbis0p5(:,1) AreaPSbis1p2(:,1) AreaPSbis4(:,1) AreaPSbis16(:,1) AreaPSmono1(:,1) AreaPSmono2p4(:,1) AreaPSmono8(:,1) AreaPSmono32(:,1)])
