[~, estimates]=FitLine([1;9],PBDRIDpts([1,end],1),1:2);
PBDRIDpts=PBDRIDpts-estimates(1).*(1:1:9)'-estimates(2);
[~, estimates]=FitLine([1;9],PBDUVpts([1,end],1),1:2);
PBDUVpts=PBDUVpts-estimates(1).*(1:1:9)'-estimates(2);

[~, estimates]=FitLine([1;9],PIBRIDpts([1,end],1),1:2);
PIBRIDpts=PIBRIDpts-estimates(1).*(1:1:9)'-estimates(2);
[~, estimates]=FitLine([1;9],PIBUVpts([1,end],1),1:2);
PIBUVpts=PIBUVpts-estimates(1).*(1:1:9)'-estimates(2);

[~, estimates]=FitLine([1;9],PMMARIDpts([1,end],1),1:2);
PMMARIDpts=PMMARIDpts-estimates(1).*(1:1:9)'-estimates(2);
[~, estimates]=FitLine([1;9],PMMAUVpts([1,end],1),1:2);
PMMAUVpts=PMMAUVpts-estimates(1).*(1:1:9)'-estimates(2);

[~, estimates]=FitLine([1;8],PSRIDpts([1,end],1),1:2);
PSRIDpts=PSRIDpts-estimates(1).*(1:1:8)'-estimates(2);
[~, estimates]=FitLine([1;8],PSUVpts([1,end],1),1:2);
PSUVpts=PSUVpts-estimates(1).*(1:1:8)'-estimates(2);

[~, estimates]=FitLine([1;9],PamSRIDpts([1,end],1),1:2);
PamSRIDpts=PamSRIDpts-estimates(1).*(1:1:9)'-estimates(2);
[~, estimates]=FitLine([1;9],PamSUVpts([1,end],1),1:2);
PamSUVpts=PamSUVpts-estimates(1).*(1:1:9)'-estimates(2);

[~, estimates]=FitLine([1;9],PnBARIDpts([1,end],1),1:2);
PnBARIDpts=PnBARIDpts-estimates(1).*(1:1:9)'-estimates(2);
[~, estimates]=FitLine([1;9],PnBAUVpts([1,end],1),1:2);
PnBAUVpts=PnBAUVpts-estimates(1).*(1:1:9)'-estimates(2);
