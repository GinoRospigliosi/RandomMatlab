%Linear Regression
%Experimental Data
x_weight = [300; 350; 400; 450; 500; 550; 600; 650; 700; 750; 800; 850]
y_height = [106; 98; 87; 79; 70; 61; 54; 45; 36; 25; 18; 8]
N = length(x_weight);
%Calculation and Plot
X = [ones(N,1), x_weight, x_weight.^2]
Y = y_height;
Phi = inv(X'*X)*X'*Y
Ytilde = X*Phi 
plot(x_weight,y_height,'bs')
xlabel('Weight (Grams)')
ylabel('Height (Millimeters)')
title( 'Weight vs. Height Data and Linear Regression')
xlim([250 900])
ylim([0 110])
grid on
hold on 
plot(X, Ytilde,'r-','Linewidth',2)
