%%
%Part 1
n=20;
%Generate valve opening angle
x=linspace(0,1.5,20);
Noise=0.1+randn(n);
y=4*sin(x)+Noise;
Correlation=corr(transpose(x),y)
% No, this would not be a good fit since correlation value is not close to
% 1 or -1
sum(Correlation)
%%
%Part 2
n=20;
x=linspace(0,1.5,20);
y=sin(x);
Correlation=corr(transpose(x),y)
Std=0.1+randn(n)
plot(Std,Correlation)

