%Gino Rospigliosi
%ENME392 Spring 19
%Section 0201
%HW2
%%
%Problem 6(a)
N=10000;
z=randn(N,1);
nbins=10;
[counts,zbinEdges]=histcounts(z,nbins);
zbinCenters=0.5*(zbinEdges(1:end-1)+zbinEdges(2:end));
figure(1);clf;
bar(zbinCenters,counts,1);
%%
N=10000;
z=randn(N,1);
nbins=20;
[counts,zbinEdges]=histcounts(z,nbins);
zbinCenters=0.5*(zbinEdges(1:end-1)+zbinEdges(2:end));
figure(1);clf;
bar(zbinCenters,counts,1);
%The height of the bars changes due to an increase in the number of bins
%which has the same amount of data, causing a smaller height of the bins
%and a change in the y-axis
%%
%Problem 6(b)
N=10000;
z=randn(N,1);
nbins=10;
[counts,zbinEdges]=histcounts(z,nbins);
zbinCenters=0.5*(zbinEdges(1:end-1)+zbinEdges(2:end));
figure(1); clf;
Z=[-5:0.01:5];
Zpdf=normpdf(Z);
scalingFactor=1.35/N;
bar(zbinCenters,scalingFactor*counts,1);
figure(1); 
hold on
plot(Z,Zpdf,'k','linewidth',2);
%%
N=10000;
z=randn(N,1);
nbins=20;
[counts,zbinEdges]=histcounts(z,nbins);
zbinCenters=0.5*(zbinEdges(1:end-1)+zbinEdges(2:end));
figure(1); clf;
Z=[-5:0.01:5];
Zpdf=normpdf(Z);
scalingFactor=2.5/N;
bar(zbinCenters,scalingFactor*counts,1);
figure(1);
hold on
plot(Z,Zpdf,'k','linewidth',2);
%%
%Problem 8
%Numerically
N=10000;
area_of_square=4; 
%Radius of two circles
R=.6;
x=2*(rand(N,1)-0.5);
y=2*(rand(N,1)-0.5);
xc1=0.4; yc1=0; xc2=-0.4; yc2=0;
r1=abs(sqrt( (x-xc1).^2 + (y-yc1).^2 ));
r2=abs(sqrt( (x-xc2).^2 + (y-yc2).^2 ));
%Initialize sum
points_in_circles=0;
%Counter
for i=1:N
    R1=r1(i);
    R2=r2(i);
%Union "or",Intersection "and" 
if((R1<R) || (R2<R))
     points_in_circles=points_in_circles + 1;
end
end
area_of_circles=area_of_square*(points_in_circles/N)
figure(1); clf;
theta=[0:0.01:2*pi];
x1=R*cos(theta) + xc1;
y1=R*sin(theta) + yc1;
x2=R*cos(theta) + xc2;
y2=R*sin(theta) + yc2;
plot(x,y,'x-');
hold on
plot(x1, y1);
plot(x2, y2);
axis square;
xlim([-1 1]);
ylim([-1 1]);
grid on;
axis equal;
hold off
figure(2);
Z=[-5:0.01:5] ;
Zpdf=normpdf(Z);
plot(Z, Zpdf, 'k', 'linewidth', 2) 
hold on
%With probability algebra
%P(AintersectionB)=P(A)+P(B)-P(AandB)
P_A=(pi*R^2);
P_B=(pi*R^2);
P_A_I_B=P_A+P_B-area_of_circles
%%
%Problem 9(a)
examResults=round(100*random('beta',5.7,2.1,10000,1));
histogram(examResults,-0.5:100.5)
%Problem 9(b)
smean=mean(examResults)
svariance=var(examResults)
sstd=std(examResults)
smedian=median(examResults)
%The median is larger than the mean which means the graph is skewed right
%Problem 9(c)
%Limits between A/B
[counts, edges] = histcounts(examResults, -0.5:100.5);
score=0.5*(edges(1:end-1)+edges(2:end));
acutoff=prctile(examResults,90)
%Problem 9(d)
%Limits between F/D
[counts, edges] = histcounts(examResults, -0.5:100.5);
score = 0.5*(edges(1:end-1)+edges(2:end));
fcutoff=prctile(examResults,10)
xline(acutoff);
xline(fcutoff);