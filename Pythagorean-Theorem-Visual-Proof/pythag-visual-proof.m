%% Pythagorean Theorem Visual Proof
%% Author: Aurel Nicolae 2019
%% Plot Pythagorean Theorem Concept
clear; close all;

% Input the lengths of the smaller sides adjacent to the 90 degrees angle:
a = 4;
b = 3;
% Alternatively, you can use the input() function.
% a = input("Type in the length for side a: ");
% b = input("Type in the length for side b: ");
% This requires some validation.


% Calculate the hypothenuse
c = sqrt(a^2 + b^2);
fprintf("Hypothenuse is %.4f\n", c);


% Plot the figure occupying the whole screen
%figure(1, "position", get(0, "screensize"))


% Plot original right triangle
subplot(2, 2, 1);
x1=[0,a,a,0];
y1=[0,0,b,0];
plot(x1,y1); fill(x1,y1,[0, 0.5, 0]); hold on; axis equal;
% next plot the areas of squares build from all 3 sides:
x2=[0,0,a,a,0];
y2=[0,-a,-a,0,0];
plot(x2,y2); fill(x2,y2,[0,0,1]);hold on; axis equal;
x3=[a,a+b,a+b,a,a];
y3=[0,0,b,b,0];
plot(x3,y3); fill(x3,y3,[1,1,0]);hold on; axis equal;
x4=[0,a,a-b,-b,0];
y4=[0,b,a+b,a,0];
plot(x4,y4); fill(x4,y4,[1,0,0]);hold off; axis equal;
grid on; title("1. Pythagorean Theorem: a^2 + b^2 = c^2");

%% Proof of Pythagorean Theorem
subplot(2, 2, 2);
% Build an (a+b)-by-(a+b) perfect square by copying and pasting clockwise
% the 4 permuations of the original right angle triangle with sides a, b, c.
x1=[0,a,a,0];
y1=[0,0,b,0];
plot(x1,y1); fill(x1,y1,[0, 0.5, 0]); hold on; axis equal;
x2=[a,a,a-b,a];
y2=[b,a+b,a+b,b];
plot(x2,y2); fill(x2,y2,[0, 0.5, 0]); hold on; axis equal;
x3=[a-b,-b,-b,a-b];
y3=[a+b,a+b,a,a+b];
plot(x3,y3); fill(x3,y3,[0, 0.5, 0]); hold on; axis equal;
x4=[-b,-b,0,-b];
y4=[a,0,0,a];
plot(x4,y4); fill(x4,y4,[0, 0.5, 0]); hold on; axis equal;
x5=[0,a,a-b,-b,0];
y5=[0,b,a+b,a,0];
plot(x5,y5); fill(x5,y5,[1,0,0]); hold off; axis equal;
grid on; title("2. Build (a+b)-by-(a+b) perfect square where area: (a+b)^2 = 2ab + c^2");

%% Shuffle the right angle triangles inside the perfect square
% NOTE: the area inside is c^2, while the remaining area is 2*a*b.
% The remaining area measures 2ab because you can build 2 rectangles
% which are a-by-b each, with areas a*b respectively.
subplot(2, 2, 3);
xsq=[a,a,-b,-b,a];
ysq=[0,a+b,a+b,0,0];
plot(xsq,ysq,'b-'); hold on; axis equal;
x1=[0,a,a,0];
y1=[0,0,b,0];
plot(x1,y1,"k:"); hold on; axis equal;
x2=[a,a,a-b,a];
y2=[b,a+b,a+b,b];
plot(x2,y2,"k:"); hold on; axis equal;
x3=[a-b,-b,-b,a-b];
y3=[a+b,a+b,a,a+b];
plot(x3,y3); fill(x3,y3,[0, 0.5, 0]); hold on; axis equal;
x4=[-b,-b,0,-b];
y4=[a,0,0,a];
plot(x4,y4); fill(x4,y4,[0, 0.5, 0]); hold on; axis equal;
x1mv=[-b,a-b,a-b,-b];
y1mv=[a,a,a+b,a];
plot(x1mv,y1mv); fill(x1mv,y1mv,[0, 0.75, 0]); hold on; axis equal;

p1 = [2*a/3, 2*b/3];  % First Point
p2 = [-b+2*a/3, a+2*b/3];    % Second Point
dp = p2-p1;         % Difference
quiver(p1(1),p1(2),dp(1),dp(2),0,'MaxHeadSize',0.2,'color',[1,0,0],'LineWidth',1.5);
hold on;

x2mv=[0,0,-b,0];
y2mv=[0,a,a,0];
plot(x2mv,y2mv); fill(x2mv,y2mv,[0, 0.75, 0]); hold on; axis equal;

p1 = [a-2*b/3, b+2*a/3];  % First Point
p2 = [-b/3, a/3];    % Second Point
dp = p2-p1;         % Difference
quiver(p1(1),p1(2),dp(1),dp(2),0,'MaxHeadSize',0.2,'color',[1,0,0],'LineWidth',1.5);
hold off; axis equal;
grid on; title("3. Re-arranged (a+b)-by-(a+b) perfect square, area: (a+b)^2 unchanged");

%% Perfect square (a+b)^2 = a^2 + 2ab + b^2
% we've seen above that the perfect square was composed in such a way
% that the area (a+b)^2 = 2ab + c^2
% Thus from these two equations, we obtain
% that a^2 + b^2 = c^2. Voila!
subplot(2, 2, 4);
xsq=[a,a,-b,-b,a];
ysq=[0,a+b,a+b,0,0];
plot(xsq,ysq,'b-'); hold on; axis equal;
x3=[a-b,-b,-b,a-b];
y3=[a+b,a+b,a,a+b];
plot(x3,y3); fill(x3,y3,[0, 0.5, 0]); hold on; axis equal;
x4=[-b,-b,0,-b];
y4=[a,0,0,a];
plot(x4,y4); fill(x4,y4,[0, 0.5, 0]); hold on; axis equal;
x1mv=[-b,a-b,a-b,-b];
y1mv=[a,a,a+b,a];
plot(x1mv,y1mv); fill(x1mv,y1mv,[0, 0.5, 0]); hold on; axis equal;
x2mv=[0,0,-b,0];
y2mv=[0,a,a,0];
plot(x2mv,y2mv); fill(x2mv,y2mv,[0, 0.5, 0]); hold on; axis equal;
xa2=[0,a,a,0,0];
ya2=[0,0,a,a,0];
plot(xa2,ya2); fill(xa2,ya2,[0,0,1]); hold on; axis equal;
xb2=[a,a,a-b,a-b,a];
yb2=[a,a+b,a+b,a,a];
plot(xb2,yb2); fill(xb2,yb2,[1,1,0]); hold off; axis equal; grid on;
title("4. Proof that a^2 + b^2 = c^2 since area 2ab + c^2 = a^2 + 2ab + b^2");
% End of proof.
