%This script gets the subtraction data for a lot of data so we can plot
%comparisons.
close all

AreaOfPiecesPS0=AreaOfSubtraction(linPS0(:,1),AreaPS0(:,2:end),AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPS0=[zeros(3,1) AreaOfPiecesPS0];


AreaOfPiecesPSmono1=AreaOfSubtraction(linPS0(:,1),AreaPSmono1,AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPSmono2p4=AreaOfSubtraction(linPS0(:,1),AreaPSmono2p4,AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPSmono8=AreaOfSubtraction(linPS0(:,1),AreaPSmono8,AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPSmono32=AreaOfSubtraction(linPS0(:,1),AreaPSmono32,AreaPS0(:,1),6775-1300:6674)

AreaOfPiecesPSbis0p5=AreaOfSubtraction(linPS0(:,1),AreaPSbis0p5,AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPSbis1p2=AreaOfSubtraction(linPS0(:,1),AreaPSbis1p2,AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPSbis4=AreaOfSubtraction(linPS0(:,1),AreaPSbis4,AreaPS0(:,1),6775-1300:6674)
AreaOfPiecesPSbis16=AreaOfSubtraction(linPS0(:,1),AreaPSbis16,AreaPS0(:,1),6775-1300:6674)


%plot
%red is combination
%blue is peak
%black is scission
figure
hold
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(1,:),'^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(2,:),'^b')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(3,:),'^k')
%plot([0 3 6 9],AreaOfPiecesPSmono1(1,:),'-or')
%plot([0 3 6 9],AreaOfPiecesPSmono1(2,:),'ob')
plot([0 3 6 9],AreaOfPiecesPSmono1(3,:),'-ok')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis0p5(1,:),'-^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis0p5(2,:),'.b')
plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis0p5(3,:),'-^k')
axis([0 9 0 0.06])

figure
hold
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(1,:),'^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(2,:),'^b')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(3,:),'^k')
%plot([0 3 6 9],AreaOfPiecesPSmono2p4(1,:),'-or')
%plot([0 3 6 9],AreaOfPiecesPSmono2p4(2,:),'ob')
plot([0 3 6 9],AreaOfPiecesPSmono2p4(3,:),'-ok')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis1p2(1,:),'-^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis1p2(2,:),'.b')
plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis1p2(3,:),'-^k')
axis([0 9 0 0.06])

figure
hold
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(1,:),'^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(2,:),'^b')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(3,:),'^k')
%plot([0 3 6 9],AreaOfPiecesPSmono8(1,:),'-or')
%plot([0 3 6 9],AreaOfPiecesPSmono8(2,:),'ob')
plot([0 3 6 9],AreaOfPiecesPSmono8(3,:),'-ok')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis4(1,:),'-^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis4(2,:),'.b')
plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis4(3,:),'-^k')
axis([0 9 0 0.11])

figure
hold
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(1,:),'^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(2,:),'^b')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPS0(3,:),'^k')
%plot([0 3 6 9],AreaOfPiecesPSmono32(1,:),'-or')
%plot([0 3 6 9],AreaOfPiecesPSmono32(2,:),'ob')
plot([0 3 6 9],AreaOfPiecesPSmono32(3,:),'-ok')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis16(1,:),'-^r')
%plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis16(2,:),'.b')
plot([0 .5 1 1.5 3 4.5 6 7.5 9],AreaOfPiecesPSbis16(3,:),'-^k')
axis([0 9 0 0.2])