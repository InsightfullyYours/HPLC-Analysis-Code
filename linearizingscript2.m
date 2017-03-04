[linPSmono1,HistPSmono1]=Histogram(PSMWaxis./MPS,MonoPeakNormPS1);
[linPSmono2p4,HistPSmono2p4]=Histogram(PSMWaxis./MPS,MonoPeakNormPS2p4);
[linPSmono32,HistPSmono32]=Histogram(PSMWaxis./MPS,MonoPeakNormPS32);
[linPSmono8,HistPSmono8]=Histogram(PSMWaxis./MPS,MonoPeakNormPS8);
[linPnBAmono1,HistPnBAmono1]=Histogram(PnBAMWaxis./MPnBA,MonoPeakNormPnBA1);
[linPnBAmono2p4,HistPnBAmono2p4]=Histogram(PnBAMWaxis./MPnBA,MonoPeakNormPnBA2p4);
[linPnBAmono32,HistPnBAmono32]=Histogram(PnBAMWaxis./MPnBA,MonoPeakNormPnBA32);
[linPnBAmono8,HistPnBAmono8]=Histogram(PnBAMWaxis./MPnBA,MonoPeakNormPnBA8);
[linPS0,HistPS0]=Histogram(PSMWaxis./MPS,PSPeakNorm0);
[linPSbis0p5,HistPSbis0p5]=Histogram(PSMWaxis./MPS,PSPeakNorm0p5);
[linPSbis16,HistPSbis16]=Histogram(PSMWaxis./MPS,PSPeakNorm16);
[linPSbis1p2,HistPSbis1p2]=Histogram(PSMWaxis./MPS,PSPeakNorm1p2);
[linPSbis4,HistPSbis4]=Histogram(PSMWaxis./MPS,PSPeakNorm4);
[linPnBA0,HistPnBA0]=Histogram(PnBAMWaxis./MPnBA,PnBAPeakNorm0);
[linPnBAbis0p5,HistPnBAbis0p5]=Histogram(PnBAMWaxis./MPnBA,PnBAPeakNorm0p5);
[linPnBAbis16,HistPnBAbis16]=Histogram(PnBAMWaxis./MPnBA,PnBAPeakNorm16);
[linPnBAbis1p2,HistPnBAbis1p2]=Histogram(PnBAMWaxis./MPnBA,PnBAPeakNorm1p2);
[linPnBAbis4,HistPnBAbis4]=Histogram(PnBAMWaxis./MPnBA,PnBAPeakNorm4);
save 8-OldLampDataBinnedAdjustedtoPeak

