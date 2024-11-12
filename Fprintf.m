var = int8(5);
var1 = 5.25;

fprintf('Usage of fprintf() function: ');
fprintf('\n');
fprintf('The value of the variable is: %d\n', var);
fprintf('The value of the variable is: %f\n', var1);

% MATLAB ‘disp’ command printing
% This print option has \n by default, and can only print strings. All int
% will be converted to string
disp('Usage of disp() function');
disp(var1);
disp(['The value of the varibale is: ', num2str(var)]);

% Exercise
num1 = input('Enter num1: ');
num2 = input('Enter num2: ');
