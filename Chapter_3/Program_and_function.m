% Programs and Functions

%% New section 
A = [1 3; 4 6]
B = [8 9; 2 5]

A + B

%% Another section
C = [4 7; 7 4]
D = [1 0; 4 6]

C + D

%% Yet another
F = [7 8; 2 5]
G = [4 6; 2 1]

F + G

clc;

%% Programs and Functions

clc;
A = randi([1,30], 1, 5)
max_A = max(A)
min_A = min(A)
fprintf('The maximum number in the array A: ');
disp(max_A)
fprintf('The minimum number in the array A: ')
disp(min_A)

%% Conditional Statement
x = randi(20, 1)
disp(['The value of x is ', num2str(x)])
if (x >= 10)
    disp('x is greater than 10')
end

clc;
x = randi(100, 1);
disp(['The value of x is: ', num2str(x)])
if (x > 80)
    disp('Grade is: A')
elseif (x >= 60 & x < 80)
    disp('Grade is: B')
elseif (x >= 40 & x <60)
    disp('Grade is: C')
else
    disp('Grade is F')
end 

%% Swich statement
x = input('Enter the month: ', 's')
switch x
    case 'January'
        disp(['Number of the days in ', x, ':31'])
    case 'February'
        disp(['Number of the days in ', x, ':28'])
    case 'March'
        disp(['Number of the days in ', x, ':31'])
    otherwise
        disp(['Enter correct month'])
end

%% For loop 
a = [1, 3, 2, 6, 7, 4,]
for i = 1:length(a)
    fprintf('Iteration: %d\n', i);
    fprintf('Value: %d\n', a(i))
end

%% User-Deﬁned Function
clc;
function [out1, out2] = myfunction(input1, input2)
    out1 = 2*input1;
    out1 = 2*input2;
end
myfunction(4, 6)

%% Example
myfunc = @(x) 2*x+3
myfunc(2)

%% Summation

function sum = summation(input1, input2)
sum = input1 + input2;
end

summation(5, 10)

%% Multiplication function
function mul = multiplication(input1, input2)
mul = input1 * input2
end

multiplication(12, 10)

%% Division function 
function div = division(input1, input2)
div = input1/input2
end

division(100, 25)

%% Solving quadratic equation 
function [x1, x2] = quad_root(a, b, c)
x1 = (-b + sqrt(b^2 - 4 * a * c))/(2*a);
x2 = (-b - sqrt(b^2 - 4 * a * c))/(2*a);
end

% For the equation: 2x^2 + 3x + 5 = 0
a = 2; b = 3; c = 5;
[x1, x2] = quad_root(a,b,c)

%%