% Vectors and MAtrices 

% A row vector 
A = [1 5 7 9]


% A column vector
B = [1;5;7;9]

% A row vector with increaments
C = 1: 2 : 12

% A row vector with decreament
C = 12: -2: 1

% Manipulation of vectors and matrices 

A = [1 3 5; 2 4 3; 2 8 4; 1 6 9]

% Other ways to create a matrix 
V1 = [1 2 5]
V2 = [4 6 8]
V3 = [5 7 9]

M = [V1; V2; V3]

M(2,3)

% The MATLAB command for determining the dimension of a matrix, A:
size(A)

% Dimentions of Matrices
M = [1 2 5; 4 6 8; 5 7 9]

V1 = M(1,:)
V2 = M(2,:)
V3 = M(3,:)

clear;
A = [2 1; 4 3; 2 1]
dim = size(A);
fprintf('Dimention of matrix A:\n');
disp(dim) %Dimention of a matrix

% Addition and Subtraction
A = [1 4 6; 2 5 7; 3 6 8]
B = [2 4 6; 3 5 7; 4 6 8]

Add = A + B
Sub = A - B

% Multiplication of matrices 
X = [1 2 4; 2 5 6]
Y = [1 2 ; 3 4; 5 7]

mul = X*Y

% Transpose of matrices
X = [1 2 4; 2 5 6]
X_T = X'

% Determinant of matrices
A = [1 2 4; 3 2 1; 2 2 1]
det(A)

% Identity Matrix
I = eye(3)

% Inverse matrix 

X = [1 2 4; 3 2 1; 2 2 1]

ans = inv(X)

clc;

A = [1 4; 2 4; 3 2];
B = [2 -4; 1 3; 7 9];

fprintf('Horizontal concatenation: \n');
C = [A,B]
fprintf('Vertical concatenation: \n');
D = [A;B]

% Arrays of Zeros and Ones
clc;
row = 3;
col = 2;

A = zeros(row, col); % array of zeros
B = ones(row, col); % array of ones

fprintf('Array of zeros: \n');
disp(A);
fprintf('Array of ones: \n');
disp(B);

% Arrays of random numbers 
clc;
row = 3;
col = 2;
num_min = 2;
num_max = 8;
% Uniformly distributed random numbers
A = rand(row, col);
% Normally distributed random numbers
B = randn(row, col);
% Uniformly distributed random pseudo-integer
C = randi([num_min, num_max], [row, col]);
fprintf('Array f uniformly distributed random numbers: \n');
disp(A);
fprintf('Array normally distribuuted random numbers: \n');
disp(B);
fprintf('Array uniformly distributed random pseudo-integer: \n');
disp(C);

% Creating linearly spaced one-dimentional array 

% Linearly spaced one-dimentional array 
% using linspace function
clc;
up_range = 2;
low_range = 12;
point = 5;
A = linspace(up_range, low_range, point);
fprintf('Linearly spaced one-dimentional array: \n');
fprintf('---------------------------------------\n');
fprintf('using linspace function: \n');
disp(A)
% Alternative version
space = 2.5;
B = up_range:space:low_range;
fprintf('Without using linspace function: \n');
disp(B)

% Finding the maximum and minimum value from an array
clc;
A = randi([1,30], 1,5)
max_A = max(A);
min_A = min(A);
fprintf('Maximum value of the array A: ');
disp(max_A);
fprintf('Minimum value of the array A:');
disp(min_A);

% Mean, Variance, Standard deviation, and mode
clc;
A = randi([1, 50], 1,6);
mean_A = mean(A);
variance_A = var(A);
std_A = std(A);
mode_A = mode(A);
fprintf('One-dimentiona; array, A:\n');
disp(A);
fprintf('mean value of A = %.2f\n', mean_A);
fprintf('Variance of A = %.2f\n', variance_A);
fprintf('Standard deviation of A = %.2f\n', std_A);
fprintf('Mode of A = %.2f\n', mode_A);