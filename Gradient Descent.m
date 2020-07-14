data = xlsread('test.xlsx','A1:B502');
m = size(data,1);
X = [ones(m, 1), data(:,1)];
Y = data(:,2);
theta = [0,0]';

alpha = 0.0001;
for iter = 1:1000000
h=(X*theta-Y)';
theta(1)=theta(1)-alpha*(1/m)*h*X(:,1);
theta(2)=theta(2)-alpha*(1/m)*h*X(:,2);
end
disp(theta);




