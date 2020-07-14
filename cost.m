data = xlsread('test.xlsx','A1:B502');
m = size(data,1);
X = [ones(m, 1), data(:,1)];
Y = data(:,2);
theta = [-0.1383,0.7184]';
predictions = X*theta;
sqrerrors = (predictions-Y).^2;
J=1/(2*m)*sum(sqrerrors);
disp(J);
