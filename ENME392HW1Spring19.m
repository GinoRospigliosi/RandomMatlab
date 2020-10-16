%Gino Rospigliosi
%ENME392 Spring 19
%Section 0201
%HW2
%%
%Problem 2(a)
%Random variable samples
N=10000;
%Uniformly distributed between 0 and 1
x=rand(N,1);
figure(1)
hist(x)
%%
%Problem 2(b)
%Random variable samples
N=10000;
y=1+2*rand(N,1);
%Uniformly distributed between 1 and 3
figure(2)
%20 bins
hist(y,20)
%%
%Problem 2(c)
%Random variable samples
N=10000;
%Normally distributed
z=randn(N,1);
figure(3)
%Centered around 0
hist(z,[-4:1:4])
%%
%Problem 5
%Radius of circle
R=1;
n=100;
area_of_square=4; 
x=2*(rand(n,1)-0.5);
y=2*(rand(n,1)-0.5);
%Distance of each point from origin
d=abs(sqrt((x.*x)+(y.*y)));
%Initialize sum
points_in_circle=0 ;
%Counter
for (i=1:n)
   r=d(i);
%Radius of 1 or below is in the circle
    if (r<=R)
     points_in_circle= points_in_circle + 1;
    end
end
area_of_circle=area_of_square*(points_in_circle/n)
%%
%With N=10000 samples
%Radius of circle
R=1;
N=10000;
area_of_square=4; 
x=2*(rand(N,1)-0.5);
y=2*(rand(N,1)-0.5);
%Distance of each point from origin
d=abs(sqrt((x.*x)+(y.*y)));
%Initialize sum
points_in_circle=0;
%Counter
for (i=1:N)
   r=d(i);
%Radius of 1 or below is in the circle
    if (r<=R)
     points_in_circle=points_in_circle + 1;
    end
end
area_of_circle=area_of_square*(points_in_circle/N)

