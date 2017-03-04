[~,DiffAreaPS0(1,:)]=AreaNormalize(-linPS0(:,2:end),DifferencePS0(:,2:end),[2983:BoundsPS0(1,2:end)]);
[~,DiffAreaPS0(2,:)]=AreaNormalize(-linPS0(:,2:end),DifferencePS0(:,2:end),[BoundsPS0(1,2:end):BoundsPS0(2,2:end)]);
[~,DiffAreaPS0(3,:)]=AreaNormalize(-linPS0(:,2:end),DifferencePS0(:,2:end),[BoundsPS0(2,2:end):6700]);
DiffAreaPS0=[zeros(3,1) DiffAreaPS0];

[~,DiffAreaPSbis0p5(1,:)]=AreaNormalize(-linPSbis0p5(:,2:end),DifferencePSbis0p5(:,2:end),[2983:BoundsPSbis0p5(1,2:end)]);
[~,DiffAreaPSbis0p5(2,:)]=AreaNormalize(-linPSbis0p5(:,2:end),DifferencePSbis0p5(:,2:end),[BoundsPSbis0p5(1,2:end):BoundsPSbis0p5(2,2:end)]);
[~,DiffAreaPSbis0p5(3,:)]=AreaNormalize(-linPSbis0p5(:,2:end),DifferencePSbis0p5(:,2:end),[BoundsPSbis0p5(2,2:end):6700]);
DiffAreaPSbis0p5=[zeros(3,1) DiffAreaPSbis0p5];

[~,DiffAreaPSbis1p2(1,:)]=AreaNormalize(-linPSbis1p2(:,2:end),DifferencePSbis1p2(:,2:end),[2983:BoundsPSbis1p2(1,2:end)]);
[~,DiffAreaPSbis1p2(2,:)]=AreaNormalize(-linPSbis1p2(:,2:end),DifferencePSbis1p2(:,2:end),[BoundsPSbis1p2(1,2:end):BoundsPSbis1p2(2,2:end)]);
[~,DiffAreaPSbis1p2(3,:)]=AreaNormalize(-linPSbis1p2(:,2:end),DifferencePSbis1p2(:,2:end),[BoundsPSbis1p2(2,2:end):6700]);
DiffAreaPSbis1p2=[zeros(3,1) DiffAreaPSbis1p2];

[~,DiffAreaPSbis4(1,:)]=AreaNormalize(-linPSbis4(:,2:end),DifferencePSbis4(:,2:end),[2983:BoundsPSbis4(1,2:end)]);
[~,DiffAreaPSbis4(2,:)]=AreaNormalize(-linPSbis4(:,2:end),DifferencePSbis4(:,2:end),[BoundsPSbis4(1,2:end):BoundsPSbis4(2,2:end)]);
[~,DiffAreaPSbis4(3,:)]=AreaNormalize(-linPSbis4(:,2:end),DifferencePSbis4(:,2:end),[BoundsPSbis4(2,2:end):6700]);
DiffAreaPSbis4=[zeros(3,1) DiffAreaPSbis4];

[~,DiffAreaPSbis16(1,:)]=AreaNormalize(-linPSbis16(:,2:end),DifferencePSbis16(:,2:end),[2983:BoundsPSbis16(1,2:end)]);
[~,DiffAreaPSbis16(2,:)]=AreaNormalize(-linPSbis16(:,2:end),DifferencePSbis16(:,2:end),[BoundsPSbis16(1,2:end):BoundsPSbis16(2,2:end)]);
[~,DiffAreaPSbis16(3,:)]=AreaNormalize(-linPSbis16(:,2:end),DifferencePSbis16(:,2:end),[BoundsPSbis16(2,2:end):6700]);
DiffAreaPSbis16=[zeros(3,1) DiffAreaPSbis16];

[~,DiffAreaPSmono1(1,:)]=AreaNormalize(-linPSmono1(:,2:end),DifferencePSmono1(:,2:end),[2983:BoundsPSmono1(1,2:end)]);
[~,DiffAreaPSmono1(2,:)]=AreaNormalize(-linPSmono1(:,2:end),DifferencePSmono1(:,2:end),[BoundsPSmono1(1,2:end):BoundsPSmono1(2,2:end)]);
[~,DiffAreaPSmono1(3,:)]=AreaNormalize(-linPSmono1(:,2:end),DifferencePSmono1(:,2:end),[BoundsPSmono1(2,2:end):6700]);
DiffAreaPSmono1=[zeros(3,1) DiffAreaPSmono1];

[~,DiffAreaPSmono2p4(1,:)]=AreaNormalize(-linPSmono2p4(:,2:end),DifferencePSmono2p4(:,2:end),[2983:BoundsPSmono2p4(1,2:end)]);
[~,DiffAreaPSmono2p4(2,:)]=AreaNormalize(-linPSmono2p4(:,2:end),DifferencePSmono2p4(:,2:end),[BoundsPSmono2p4(1,2:end):BoundsPSmono2p4(2,2:end)]);
[~,DiffAreaPSmono2p4(3,:)]=AreaNormalize(-linPSmono2p4(:,2:end),DifferencePSmono2p4(:,2:end),[BoundsPSmono2p4(2,2:end):6700]);
DiffAreaPSmono2p4=[zeros(3,1) DiffAreaPSmono2p4];

[~,DiffAreaPSmono8(1,:)]=AreaNormalize(-linPSmono8(:,2:end),DifferencePSmono8(:,2:end),[2983:BoundsPSmono8(1,2:end)]);
[~,DiffAreaPSmono8(2,:)]=AreaNormalize(-linPSmono8(:,2:end),DifferencePSmono8(:,2:end),[BoundsPSmono8(1,2:end):BoundsPSmono8(2,2:end)]);
[~,DiffAreaPSmono8(3,:)]=AreaNormalize(-linPSmono8(:,2:end),DifferencePSmono8(:,2:end),[BoundsPSmono8(2,2:end):6700]);
DiffAreaPSmono8=[zeros(3,1) DiffAreaPSmono8];

[~,DiffAreaPSmono32(1,:)]=AreaNormalize(-linPSmono32(:,2:end),DifferencePSmono32(:,2:end),[2983:BoundsPSmono32(1,2:end)]);
[~,DiffAreaPSmono32(2,:)]=AreaNormalize(-linPSmono32(:,2:end),DifferencePSmono32(:,2:end),[BoundsPSmono32(1,2:end):BoundsPSmono32(2,2:end)]);
[~,DiffAreaPSmono32(3,:)]=AreaNormalize(-linPSmono32(:,2:end),DifferencePSmono32(:,2:end),[BoundsPSmono32(2,2:end):6700]);
DiffAreaPSmono32=[zeros(3,1) DiffAreaPSmono32];

[~,DiffAreaPSnewRIDbis(1,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDbis(:,2:end),[6208:BoundsPSnewRIDbis(1,2:end)]);
[~,DiffAreaPSnewRIDbis(2,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDbis(:,2:end),[BoundsPSnewRIDbis(1,2:end):BoundsPSnewRIDbis(2,2:end)]);
[~,DiffAreaPSnewRIDbis(3,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDbis(:,2:end),[BoundsPSnewRIDbis(2,2:end):9900]);
DiffAreaPSnewRIDbis=[zeros(3,1) DiffAreaPSnewRIDbis];

[~,DiffAreaPSnewRIDmono(1,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDmono(:,2:end),[6208:BoundsPSnewRIDmono(1,2:end)]);
[~,DiffAreaPSnewRIDmono(2,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDmono(:,2:end),[BoundsPSnewRIDmono(1,2:end):BoundsPSnewRIDmono(2,2:end)]);
[~,DiffAreaPSnewRIDmono(3,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDmono(:,2:end),[BoundsPSnewRIDmono(2,2:end):9900]);
DiffAreaPSnewRIDmono=[zeros(3,1) DiffAreaPSnewRIDmono];

[~,DiffAreaPSnewRIDctr(1,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDctr(:,2:end),[6208:BoundsPSnewRIDctr(1,2:end)]);
[~,DiffAreaPSnewRIDctr(2,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDctr(:,2:end),[BoundsPSnewRIDctr(1,2:end):BoundsPSnewRIDctr(2,2:end)]);
[~,DiffAreaPSnewRIDctr(3,:)]=AreaNormalize(-linPSRID(:,1),DifferencePSnewRIDctr(:,2:end),[BoundsPSnewRIDctr(2,2:end):9900]);
DiffAreaPSnewRIDctr=[zeros(3,1) DiffAreaPSnewRIDctr];

[~,DiffAreaPSnewUVbis(1,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVbis(:,2:end),[6208:BoundsPSnewUVbis(1,2:end)]);
[~,DiffAreaPSnewUVbis(2,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVbis(:,2:end),[BoundsPSnewUVbis(1,2:end):BoundsPSnewUVbis(2,2:end)]);
[~,DiffAreaPSnewUVbis(3,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVbis(:,2:end),[BoundsPSnewUVbis(2,2:end):9900]);
DiffAreaPSnewUVbis=[zeros(3,1) DiffAreaPSnewUVbis];

[~,DiffAreaPSnewUVmono(1,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVmono(:,2:end),[6208:BoundsPSnewUVmono(1,2:end)]);
[~,DiffAreaPSnewUVmono(2,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVmono(:,2:end),[BoundsPSnewUVmono(1,2:end):BoundsPSnewUVmono(2,2:end)]);
[~,DiffAreaPSnewUVmono(3,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVmono(:,2:end),[BoundsPSnewUVmono(2,2:end):9900]);
DiffAreaPSnewUVmono=[zeros(3,1) DiffAreaPSnewUVmono];

[~,DiffAreaPSnewUVctr(1,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVctr(:,2:end),[6208:BoundsPSnewUVctr(1,2:end)]);
[~,DiffAreaPSnewUVctr(2,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVctr(:,2:end),[BoundsPSnewUVctr(1,2:end):BoundsPSnewUVctr(2,2:end)]);
[~,DiffAreaPSnewUVctr(3,:)]=AreaNormalize(-linPSUV(:,1),DifferencePSnewUVctr(:,2:end),[BoundsPSnewUVctr(2,2:end):9900]);
DiffAreaPSnewUVctr=[zeros(3,1) DiffAreaPSnewUVctr];