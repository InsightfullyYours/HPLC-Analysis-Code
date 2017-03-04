[linPBDRID,HistPBDRID]=Histogram(RIDMWaxis2colPBD./MPBD,SamePB14RID);
[linPBDUV,HistPBDUV]=Histogram(UVMWaxis2colPBD./MPBD,SamePB14UV);
[linPIBRID,HistPIBRID]=Histogram(RIDMWaxis2colPIB./MPIB,SamePIBRID);
[linPIBUV,HistPIBUV]=Histogram(UVMWaxis2colPIB./MPIB,SamePIBUV);
[linPMMARID,HistPMMARID]=Histogram(RIDMWaxis2colPMMA./MPMMA,SamePMMARID);
[linPMMAUV,HistPMMAUV]=Histogram(UVMWaxis2colPMMA./MPMMA,SamePMMAUV);
[linPSRID,HistPSRID]=Histogram(RIDMWaxis2colPS./MPS,SamePSRID);
[linPSUV,HistPSUV]=Histogram(UVMWaxis2colPS./MPS,SamePSUV);
[linPSnewRID,HistPSnewRID]=Histogram(RIDMWaxis4colPS./MPS,SamePSnewRID);
[linPSnewUV,HistPSnewUV]=Histogram(UVMWaxis4colPS./MPS,SamePSnewUV);
[linPamSRID,HistPamSRID]=Histogram(RIDMWaxis2colPamS./MPamS,SamePamSRID);
[linPamSUV,HistPamSUV]=Histogram(UVMWaxis2colPamS./MPamS,SamePamSUV);
[linPnBARID,HistPnBARID]=Histogram(RIDMWaxis2colPnBA./MPnBA,SamePnBARID);
[linPnBAUV,HistPnBAUV]=Histogram(UVMWaxis2colPnBA./MPnBA,SamePnBAUV);
save 8-LinearizedAdjustedtoIntSt
clear
load('D:\Documents and Settings\Nick\Desktop\Work\Data Analysis\Thesis Data\7-AllDataAdjustedtoBigPeak.mat')
MPS=104.15;
MPBD=54.0916;
MPIB=56.11;
MPMMA=100.12;
MPamS=118.18;
MPnBA=128.17;
[linPBDRID,HistPBDRID]=Histogram(RIDMWaxis2colPBD./MPBD,SamePB14RID);
[linPBDUV,HistPBDUV]=Histogram(UVMWaxis2colPBD./MPBD,SamePB14UV);
[linPIBRID,HistPIBRID]=Histogram(RIDMWaxis2colPIB./MPIB,SamePIBRID);
[linPIBUV,HistPIBUV]=Histogram(UVMWaxis2colPIB./MPIB,SamePIBUV);
[linPMMARID,HistPMMARID]=Histogram(RIDMWaxis2colPMMA./MPMMA,SamePMMARID);
[linPMMAUV,HistPMMAUV]=Histogram(UVMWaxis2colPMMA./MPMMA,SamePMMAUV);
[linPSRID,HistPSRID]=Histogram(RIDMWaxis2colPS./MPS,SamePSRID);
[linPSUV,HistPSUV]=Histogram(UVMWaxis2colPS./MPS,SamePSUV);
[linPSnewRID,HistPSnewRID]=Histogram(RIDMWaxis4colPS./MPS,SamePSnewRID);
[linPSnewUV,HistPSnewUV]=Histogram(UVMWaxis4colPS./MPS,SamePSnewUV);
[linPamSRID,HistPamSRID]=Histogram(RIDMWaxis2colPamS./MPamS,SamePamSRID);
[linPamSUV,HistPamSUV]=Histogram(UVMWaxis2colPamS./MPamS,SamePamSUV);
[linPnBARID,HistPnBARID]=Histogram(RIDMWaxis2colPnBA./MPnBA,SamePnBARID);
[linPnBAUV,HistPnBAUV]=Histogram(UVMWaxis2colPnBA./MPnBA,SamePnBAUV);
save 8-LinearizedAdjustedtoBigPeak
