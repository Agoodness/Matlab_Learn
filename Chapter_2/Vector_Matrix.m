% Vectors and MAtrices 

% A row vector 
A = [1 5 7 9];


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

% Some instances of the use of the dot operator
clc;
% A and B are two arrays
% scaler_val is a scalar value;
A = randi([1,2], 2,3);
B = randi([1,2], 2,3);
fprintf('Some instances of the usage of dot operator:\n');
fprintf('-------------------------------------------\n');
% Dot multiplication 
fprintf('Dot multiplication of two arrays:\n')
disp(A.*B);
% Element wise division between two arrays
fprintf('Element-wise division of two arrays:\n')
disp(A./B);
% Division: Numerator-scalar and denominator-array
scalar_val = 5;
fprintf('Division when numerator-scalar and denominator-array:\n')
disp(scalar_val./A);
% Power value: Either the base, or power is an array
Base = 10;
fprintf('Power term is an array:\n')
disp(Base.^A)
fprintf('Base term is an array:\n')
disp(A.^scalar_val)

% Table Array, Cell Araay, and Structure Array 
% Creating table 
clc;
Battery_name = {'Li-ion'; 'Liquid super capacitor'; 'Lead acid'};
Energy_density = [5; 2.5; 2];
Life_cycle = [2; 5; 1.5];
Safety = {'High'; 'Low'; 'Moderate'};
TABLE = table(Battery_name, Energy_density, Life_cycle,Safety);
fprintf('Comparison between different batery types:\n');
fprintf('------------------------------------------\n');
disp(TABLE);
% Accessing each column of the table
fprintf('Accessing the data batery_name column:\n');
disp(TABLE.Battery_name);
fprintf('Accessing the Energy_density column:\n');
disp(TABLE.Energy_density);
fprintf('Accessing the data Life_cycle column:\n');
disp(TABLE.Life_cycle);
fprintf('Accessing the data Safety column:\n');
disp(TABLE.Safety); 

% Cell Table
clc;
A = cell(2,3);
A(1,:) = {3,4,4};
A(2,:) = {'A', 'B', 'C'};
fprintf('Cell array, A:\n');
disp(A);

% Structured Array 
clc;
Field1 = 'Battery_Name';
val_Field1 = {'Li-ion', 'Liquid super capacitor', 'Lead acid'};
Field2 = 'Energy_Density';
val_Field2 = {5, 2.5, 2};
Field3 = 'Life_cycle';
val_Field3 = [2, 5, 1.5];
Field4 = 'Safety';
val_Field4 = {'High', 'Low', 'Moderate'};
fprintf('Structure array of battery types and properties:\n');
S = struct(Field1,val_Field1, Field2,val_Field2, ...
    Field3,val_Field3, Field4,val_Field4);
fprintf('Accessing first field of the structure:\n\n');
disp(S(1));
fprintf('Accessing second field of the structure:\n\n');
disp(S(2));
fprintf('Accessing third field of the structure:\n\n');
disp(S(3));

% Exercise 
% clc;
% What will be the output of the following commands?
A = 3:3:15;
B = [;];
Z = [143, 324, 676, 432, 656, 978, 235, 768, 876, 234, 674];

% 4. Consider three matrices given as follows:
MatA = [4 7 1; 7 2 3; 5 5 9];
MatB = [6 0 4; 9 8 1; 7 5 2];
MatC = [2 5 3; 0 17 9; 8 0 1];

MatD = MatA + MatB;
MatE = MatB - MatC;
MatF = MatA/MatC;
MatG = MatB';
MatH = det(MatC);
MatI = inv(MatA);
MatJ = horzcat(MatB, MatC);
MatK = vertcat(MatC, MatA);

% Determine MatA  MatB, MatB  MatA, and MatA.  MatB. Do the
%results vary? If so, why? 

MatA * MatB;
MatB * MatA;
MatA .* MatB;

% Given an array a ¼ linspace(2,20,100). What is the mean, variance, standard
% deviation, and mode of a?
a = linspace(2, 20, 100);
mean(a);
var(a);
std(a);
mode(a);

% Suppose you are working with ﬁve semiconductor materials, namely, silicon (Si),
% germanium (Ge), tin (Sn), carbon (C), and tellurium (Te). Each of them has a
% bandgap of 1.12, 0.67, 0.08, 5.47, and 0.33 eV, respectively, eV being their unit
% of measurement.

Serial_Number = {'1'; '2'; '3'; '4'; '5'};
Element_Name = {'Silicon'; 'Germanium'; 'Tin'; 'Carbon'; 'Tellerium'};
Bandgap = [1.12; 0.67; 0.08; 5.47; 0.03];
Table = table(Serial_Number, Element_Name, Bandgap)

Field1 = 'Serial_Number'
val_Field1 = {'1', '2', '3', '4', '5'}
Field2 = 'Element_Name'
val_Field2 = {'Silicon', 'Germanium', 'Tin', 'Carbon', 'Tellium'}
Field3 = 'Bandgap'
val_Field3 = {'1.12', '0.67', '0.07', '5.47', '0.33'}
struct(Field1,val_Field1, Field2,val_Field2, Field3,val_Field3)

