function NewMWs=TransformPStoOther(MWxaxisPS,choice)
%THis converts from PS to another polymer using Mark Houwink Coefficients
Kps=0.00863;
aps=.736;

%there are multiple polymers it can be converted to.  We switch between
%them

switch choice
    case 1
        %PnBA
        %need to redefine Kps and aps because this data is from a different
        %source.  Therefore the relative values have to be maintained.
        Kps=.000114;
        aps=.716;
        K=0.000122;
        a=0.700;
    case 2
        %Poly alpha methyl styrene (mL/g)
        K=0.0111;
        a=0.690;
    case 3
        %polyisobutylene (mL/g)
        K=0.0266;
        a=.654;
    case 4
        %polymethylmethacrylate (mL/g)
        K=0.00897;
        a=0.710;
    case 5
        %1,4 polybutadiene
        K=.0252;
        a=0.727;
    case 6
        %P-4MS from Schroder, ebert; Makromol. Chem. 188, 14151423 (1987)
        Kps=0.014;
        aps=0.7;
        K=0.0402;
        a=0.6079;
end

check=find(MWxaxisPS<1);
MWxaxisPS(check)=1;

logMWnew=(1./(1+a)).*log10(Kps./K)+((1+aps)./(1+a)).*log10(MWxaxisPS);

NewMWs=10.^(logMWnew);
end