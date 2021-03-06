disp('notes_10_26_15');
% Cartesian Vectors
% Functions (Vecotrs) -> Resultant Vector
% 
% Ex:
% 
% F_1, F_2, F_3, F_n
% 
% =
% 
% R = F_1, F_2, F_3, F_n

%vector_u = vector_R / abs|vector_R|

% alpha: cos(alpha) is R_x/abs|R|
%        cos(beta)  is R_y/abs|R|
%        cos(gamma) is R_z/abs|R|

%--------------------------------------------------------------------------

disp('Example 1: Cartesian Vectors');disp(' ');
disp('The resultant vector is the sum of the vectors');disp(' ');
clear all
close all

%Input: number of input vectors, formal of the vectors
%Output: |vector_R| (magnitude)
%        unit vector 
%        Angles that make vecdtor_R makes with x, y, z

disp('Example input: [1 2 3; 4 5 6; 7 8 9]');disp(' ');
mat_force=input('Enter the Forces of 3 Vectors in a matrix: ');
%mat_force=[1 2.5 3; 4 5.5 6; 7 9 8]
%mat_other=[1 2.5 3; 4 5.5 6; 7 9 8]
n=length(mat_force);
R=zeros(1,3);

for i=1:n
    R=R+mat_force(i,:); %R is recursive
end
magnitude_R=sqrt(R(1)^2+R(2)^2+R(3)^2)
unit_vector=R/magnitude_R
alpha=acosd(R(1)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
beta=acosd(R(2)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
gamma=acosd(R(3)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))

for i=1:n
arrow_plot=quiver3(0, 0, 0, mat_force(1), mat_force(2), mat_force(3));

%Input: Force and angles alpha, beta, gamma of the input forces
%Output: |vector_R| (magnitude)
%        unit vector 
%        Output Angles that make vecdtor_R makes with x, y, z

% mat_force=input('Enter the Force: ');
% disp('Example input: [1 2 3; 4 5 6; 7 8 9]');disp(' ');

%due next monday: nov 1 2015