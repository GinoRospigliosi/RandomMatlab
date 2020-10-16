%Gino Rospigliosi
%ENME392 Spring 19
%Section 0201
%HW3
%%Problem 1(b)
%X=0.5sin(x) 0=<X=<pi
%Y=X+(X-pi/2)^3
%Bounds
%Lower Bound
aX=0;
%Upper Bound
bX=pi;
X=[0:.001:pi];
XX=0.5*sin(X);
Y=[0:.001:pi];
YY=Y+(Y-pi/2).^3;
[ymax ind] = max(YY);
Ymax = YY(ind)
[ymin ind] = min(YY);
Ymin = YY(ind)
figure(1)
fplot(@(x) (0.5*sin(x)),[0 pi],'b')
figure(2)
fplot(@(y) (y+(y-pi/2)^3),[0 pi], 'b')
figure(3)
xaxis=[Ymin Ymax];
pdfY=(0.5*sin(YY)+(0.5*sin(YY)-pi/2).^3);
plot(YY, pdfY,'b')
xlim([Ymin Ymax])
%%
%Problem 4(c)
V = 100 ;
alpha = pi/180*( 40 + 1*randn(10000,1) ) ;
L = V^2 * sin(2*alpha) / 9.8 ;
figure
histogram(L)
alphaI_mean=mean(alpha)
alphaI_std= std(alpha)
L_mean=mean(L)
L_std= std(L)
%%
V = 140 ;
alpha = pi/180*( 15 + 1*randn(10000,1) ) ;
L = V^2 * sin(2*alpha) / 9.8 ;
figure
histogram(L)
alphaI_mean=mean(alpha)
alphaI_std= std(alpha)
L_mean=mean(L)
L_std= std(L)
%Problem 4(d)
%I think random sampling is more accurate
%Porblem 4(e)
%Option 2 is best as show by parts c-d







