function [Normed Depletion Subtracted SubtractedScaled AreaComb AreaScis]=HeightNorm(Data,control,range,varargin)

if size(control,2)==1
    control=repmat(control,1,size(Data,2));
end

Data=SameX(Data,control,range);

[index location]=max(Data(range,:),[],1);
cont=max(control(range,:),[],1);
for i=1:size(Data,2)
    Normed(:,i)=cont(i).*Data(:,i)./index(i);
    Depletion(:,i)=index(i)./cont(i);
    if Depletion(:,i)>1;
        Depletion(:,i)=1./Depletion(:,i);
    end
    Depletion(:,i)=100-Depletion(:,i).*100;
end

Depletion(:,1)=0;

Subtracted=Normed-repmat(Normed(:,1),1,size(Normed,2));
SubtractedScaled=Subtracted./repmat(abs(Depletion),size(Subtracted,1),1);

if nargin==5  %varargin{1} is the xaxis  while varargin{2} is the outer bounds of the area calculation
    for i=1:size(Subtracted,2)
        [~, AreaComb(i,:),~]=AreaNormalize(varargin{:,1}(:,1),Subtracted(:,i),varargin{:,2}(1,1):location(:,i)+range(1));
        [~, AreaScis(i,:),~]=AreaNormalize(varargin{:,1}(:,1),Subtracted(:,i),location(:,i)+range(1):varargin{:,2}(end,end));
    end
    AreaComb=AreaComb';
    AreaScis=AreaScis';
end
end