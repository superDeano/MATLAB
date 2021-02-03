% Dean Chong San
% 40061194
clc;
close all;

% matrix dimensions for the plots
h = 3; 
w = 2;

subplot(h, w, 1);
n = [ 0 : 7 ] ;
 N = 4 ;
x = sin ( (2*pi)/N * n );
stem(n ,x ) ;

subplot(h, w, 2);
N = 16 ;
n = [ 0 : 31  ] ;
x = sin ( (2*pi)/N * n );
stem(n,x);

% Part (i)
subplot(h, w, 3);
n = [0 : 2048];
x = cos( (2*pi)/1024 * n );
stem (n, x);
format long;
% They are equal since dif = 0
dif = (cos( (2*pi)/1024 * 1 ) - cos( (2*pi)/1024 * (1 + 1024) ) );

if dif == 0
    disp('The two functions are equal')
else
    disp('The two functions are not equal')
end

% Part (ii)
subplot(h, w, 4);
n = [ 0 : 7 ] ;
 N = 4 ;
x = sin ( (2* 3.14)/N * n );
stem(n ,x ) ;

% Part (iii)
subplot(h, w, 5);
n = [ 0 : 7 ] ;
x1 = cos(pi/4* n + pi/3);
stem(n ,x1 ) ;

subplot(h, w, 6);
n = [ 0 : 7 ] ;
x2 = cos(9*pi/4.*n + pi/3);
stem(n ,x2 ) ;

dif2 = cos(pi/4* 2 + pi/3) - cos(9*pi/4.*2 + pi/3); 
% they are not equal since dif2 != 0
if dif2 == 0
    disp('The two functions are equal')
else
    disp('The two functions are not equal')
end