
% [crosspostoneg, crossnegtopos]=ZeroCrossing(DifferencePSnewUVbis,[3840:9940],200);
% PosNegPSnewUVbis=[crosspostoneg;crossnegtopos];
% [crosspostoneg, crossnegtopos]=ZeroCrossing(DifferencePSnewRIDmono,[3840:9940],5);
% PosNegPSnewRIDmono=[crosspostoneg;crossnegtopos];
% [crosspostoneg, crossnegtopos]=ZeroCrossing(DifferencePSnewUVmono(:,[1,3:end]),[3840:9940],75);
% PosNegPSnewUVmono=[crosspostoneg;crossnegtopos];
[crosspostoneg, crossnegtopos]=ZeroCrossing(DifferencePSnewRIDctr,[3840:9940],50);
PosNegPSnewRIDctr=[crosspostoneg;crossnegtopos];
% [crosspostoneg, crossnegtopos]=ZeroCrossing(DifferencePSnewUVctr,[3840:9940],50);
% PosNegPSnewUVctr=[crosspostoneg;crossnegtopos];