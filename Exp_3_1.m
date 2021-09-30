M = [180, 600, 1500];
Cd = [1, 0.45, 0.32];
mu = 0.015;
Rw = [0.28, 0.2, 0.3];
A = [0.6, 1.6, 2.3];
v = (0:100)/3.6;
rho = 1.2;
g = 9.81;
%% FOR 2W
Fd1 = (0.5*Cd(1)*A(1)*rho*(v.^2));  %2W Aero Drag
Fr1 = M(1)*mu*g;                    %2W Rolling Resistance
Ft1 = Fd1 + Fr1;                    %2W Total Tractive force
figure(1);
subplot(3,1,1);
plot(v,Ft1,"r-", "LineWidth",1);    %Plot between traction force w.r.t velocity 
xlabel("Velocity in m/s");
ylabel("Tractive force in N");
title("Analysis of tractive force w.r.t velocity for 2W");
Pt1 = Ft1.*v;                       %2W Tractive power
subplot(3,1,2);
plot(v,Pt1,"b-","LineWidth",1);     %Plot between tractive power w.r.t velocity
xlabel("Velocity in m/s");
ylabel("Tractive power in W");
title("Analysis of tractive power w.r.t velocity for 2W");
%Grade Resistance at 0, 5, AND 10
beta = [0 5 10]*pi/180;
Fg_0_2W = M(1)*g*sin(beta(1));
Fg_5_2W = M(1)*g*sin(beta(2));
Fg_10_2W = M(1)*g*sin(beta(3));
%Rolling resistance at 0, 5 AND 10
Fr_0_2W = M(1)*mu*g*cos(beta(1));
Fr_5_2W = M(1)*mu*g*cos(beta(2));
Fr_10_2W = M(1)*mu*g*cos(beta(3));
%Tractive force of 2W at 0, 5 and 10 degrees
Ft_0_2W = Fd1 + Fr_0_2W + Fg_0_2W;  
Ft_5_2W = Fd1 + Fr_5_2W + Fg_5_2W;  
Ft_10_2W = Fd1 + Fr_10_2W + Fg_10_2W;  
%Tractive power of 2W at 0, 5 and 10 degrees
Pt_0_2W = Ft_0_2W.*v;
Pt_5_2W = Ft_5_2W.*v;
Pt_10_2W = Ft_10_2W.*v;
%Plot between tractive power of 2W at 0, 5 and 10 degrees
subplot(3,1,3);
plot(v,Pt_0_2W,"r-","LineWidth",1);
hold on
plot(v,Pt_5_2W,"b-","LineWidth",1);
hold on
plot(v,Pt_10_2W,"g-","LineWidth",1);
xlabel("Velocity in m/s");
ylabel("Tractive power in W");
legend("0 degree", "5 degree", "10 degree");
title("Analysis of tractive power at 0, 5 and 10 degrees w.r.t velocity for 2W");

%% FOR 3W
Fd2 = (0.5*Cd(2)*A(2)*rho*(v.^2));  %3W Aero Drag
Fr2 = M(2)*mu*g;                    %3W Rolling Resistance
Ft2 = Fd2 + Fr2;                    %3W Total Tractive force
figure(2);
subplot(3,1,1);
plot(v,Ft2,"r-", "LineWidth",1);    %Plot between traction force w.r.t velocity 
xlabel("Velocity in m/s");
ylabel("Tractive force in N");
title("Analysis of tractive force w.r.t velocity for 3W");
Pt2 = Ft2.*v;                       %3W Tractive power
subplot(3,1,2);
plot(v,Pt2,"b-","LineWidth",1);     %Plot between tractive power w.r.t velocity
xlabel("Velocity in m/s");
ylabel("Tractive power in W");
title("Analysis of tractive power w.r.t velocity for 3W");
%Grade Resistance at 0, 5, AND 10
beta = [0 5 10]*pi/180;
Fg_0_3W = M(2)*g*sin(beta(1));
Fg_5_3W = M(2)*g*sin(beta(2));
Fg_10_3W = M(2)*g*sin(beta(3));
%Rolling resistance at 0, 5 AND 10
Fr_0_3W = M(2)*mu*g*cos(beta(1));
Fr_5_3W = M(2)*mu*g*cos(beta(2));
Fr_10_3W = M(2)*mu*g*cos(beta(3));
%Tractive force of 3W at 0, 5 and 10 degrees
Ft_0_3W = Fd2 + Fr_0_3W + Fg_0_3W;  
Ft_5_3W = Fd2 + Fr_5_3W + Fg_5_3W;  
Ft_10_3W = Fd2 + Fr_10_3W + Fg_10_3W;  
%Tractive power of 3W at 0, 5 and 10 degrees
Pt_0_3W = Ft_0_3W.*v;
Pt_5_3W = Ft_5_3W.*v;
Pt_10_3W = Ft_10_3W.*v;
%Plot between tractive power of 3W at 0, 5 and 10 degrees
subplot(3,1,3);
plot(v,Pt_0_3W,"r-","LineWidth",1);
hold on
plot(v,Pt_5_3W,"b-","LineWidth",1);
hold on
plot(v,Pt_10_3W,"g-","LineWidth",1);
xlabel("Velocity in m/s");
ylabel("Tractive power in W");
legend("0 degree", "5 degree", "10 degree");
title("Analysis of tractive power at 0, 5 and 10 degrees w.r.t velocity for 3W");

%% FOR 4W

Fd3 = (0.5*Cd(3)*A(3)*rho*(v.^2));  %4W Aero Drag
Fr3 = M(3)*mu*g;                    %4W Rolling Resistance
Ft3 = Fd3 + Fr3;                    %4W Total Tractive force
figure(3);
subplot(3,1,1);
plot(v,Ft3,"r-", "LineWidth",1);    %Plot between traction force w.r.t velocity 
xlabel("Velocity in m/s");
ylabel("Tractive force in N");
title("Analysis of tractive force w.r.t velocity for 4W");
Pt3 = Ft3.*v;                       %4W Tractive power
subplot(3,1,2);
plot(v,Pt3,"b-","LineWidth",1);     %Plot between tractive power w.r.t velocity
xlabel("Velocity in m/s");
ylabel("Tractive power in W");
title("Analysis of tractive power w.r.t velocity for 4W");
%Grade Resistance at 0, 5, AND 10
beta = [0 5 10]*pi/180;
Fg_0_4W = M(3)*g*sin(beta(1));
Fg_5_4W = M(3)*g*sin(beta(2));
Fg_10_4W = M(3)*g*sin(beta(3));
%Rolling resistance at 0, 5 AND 10
Fr_0_4W = M(3)*mu*g*cos(beta(1));
Fr_5_4W = M(3)*mu*g*cos(beta(2));
Fr_10_4W = M(3)*mu*g*cos(beta(3));
%Tractive force of 4W at 0, 5 and 10 degrees
Ft_0_4W = Fd3 + Fr_0_4W + Fg_0_4W;  
Ft_5_4W = Fd3 + Fr_5_4W + Fg_5_4W;  
Ft_10_4W = Fd3 + Fr_10_4W + Fg_10_4W;  
%Tractive power of 4W at 0, 5 and 10 degrees
Pt_0_4W = Ft_0_4W.*v;
Pt_5_4W = Ft_5_4W.*v;
Pt_10_4W = Ft_10_4W.*v;
%Plot between tractive power of 4W at 0, 5 and 10 degrees
subplot(3,1,3);
plot(v,Pt_0_4W,"r-","LineWidth",1);
hold on
plot(v,Pt_5_4W,"b-","LineWidth",1);
hold on
plot(v,Pt_10_4W,"g-","LineWidth",1);
xlabel("Velocity in m/s");
ylabel("Tractive power in W");
legend("0 degree", "5 degree", "10 degree");
title("Analysis of tractive power at 0, 5 and 10 degrees w.r.t velocity for 4W");

%% TRACTIVE POWER AT 25, 50 AND 100 KMPH AT 0, 5 AND 10 DEGREES

vel = [25 50 100]/3.6;
theta = [0 5 10]*pi/180;
% FOR 2W

% At velocity 25 kmph and theta = 0 degree
Fd1_0_25 = 0.5*Cd(1)*A(1)*rho*(vel(1)^2);
Fr1_0_25 = M(1)*mu*g*cos(theta(1));
Fg1_0_25 = M(1)*g*sin(theta(1));
Ft1_0_25 = Fd1_0_25 + Fr1_0_25 + Fg1_0_25;
Pt1_0_25 = Ft1_0_25*vel(1);

% At velocity 25 kmph and theta = 5 degree
Fd1_5_25 = 0.5*Cd(1)*A(1)*rho*(vel(1)^2);
Fr1_5_25 = M(1)*mu*g*cos(theta(2));
Fg1_5_25 = M(1)*g*sin(theta(2));
Ft1_5_25 = Fd1_5_25 + Fr1_5_25 + Fg1_5_25;
Pt1_5_25 = Ft1_5_25*vel(1);

% At velocity 25 kmph and theta = 10 degree
Fd1_10_25 = 0.5*Cd(1)*A(1)*rho*(vel(1)^2);
Fr1_10_25 = M(1)*mu*g*cos(theta(3));
Fg1_10_25 = M(1)*g*sin(theta(3));
Ft1_10_25 = Fd1_10_25 + Fr1_10_25 + Fg1_10_25;
Pt1_10_25 = Ft1_10_25*vel(1);

% At velocity 50 kmph and theta = 0 degree
Fd1_0_50 = 0.5*Cd(1)*A(1)*rho*(vel(2)^2);
Fr1_0_50 = M(1)*mu*g*cos(theta(1));
Fg1_0_50 = M(1)*g*sin(theta(1));
Ft1_0_50 = Fd1_0_50 + Fr1_0_50 + Fg1_0_50;
Pt1_0_50 = Ft1_0_50*vel(2);

% At velocity 50 kmph and theta = 5 degree
Fd1_5_50 = 0.5*Cd(1)*A(1)*rho*(vel(2)^2);
Fr1_5_50 = M(1)*mu*g*cos(theta(2));
Fg1_5_50 = M(1)*g*sin(theta(2));
Ft1_5_50 = Fd1_5_50 + Fr1_5_50 + Fg1_5_50;
Pt1_5_50 = Ft1_5_50*vel(2);

% At velocity 50 kmph and theta = 10 degree
Fd1_10_50 = 0.5*Cd(1)*A(1)*rho*(vel(2)^2);
Fr1_10_50 = M(1)*mu*g*cos(theta(3));
Fg1_10_50 = M(1)*g*sin(theta(3));
Ft1_10_50 = Fd1_10_50 + Fr1_10_50 + Fg1_10_50;
Pt1_10_50 = Ft1_10_50*vel(2);

% At velocity 100 kmph and theta = 0 degree
Fd1_0_100 = 0.5*Cd(1)*A(1)*rho*(vel(3)^2);
Fr1_0_100 = M(1)*mu*g*cos(theta(1));
Fg1_0_100 = M(1)*g*sin(theta(1));
Ft1_0_100 = Fd1_0_100 + Fr1_0_100 + Fg1_0_100;
Pt1_0_100 = Ft1_0_100*vel(3);

% At velocity 100 kmph and theta = 5 degree
Fd1_5_100 = 0.5*Cd(1)*A(1)*rho*(vel(3)^2);
Fr1_5_100 = M(1)*mu*g*cos(theta(2));
Fg1_5_100 = M(1)*g*sin(theta(2));
Ft1_5_100 = Fd1_5_100 + Fr1_5_100 + Fg1_5_100;
Pt1_5_100 = Ft1_5_25*vel(3);

% At velocity 100 kmph and theta = 10 degree
Fd1_10_100 = 0.5*Cd(1)*A(1)*rho*(vel(3)^2);
Fr1_10_100 = M(1)*mu*g*cos(theta(3));
Fg1_10_100 = M(1)*g*sin(theta(3));
Ft1_10_100 = Fd1_10_100 + Fr1_10_100 + Fg1_10_100;
Pt1_10_100 = Ft1_10_100*vel(3);

% FOR 3W

% At velocity 25 kmph and theta = 0 degree
Fd2_0_25 = 0.5*Cd(2)*A(2)*rho*(vel(1)^2);
Fr2_0_25 = M(2)*mu*g*cos(theta(1));
Fg2_0_25 = M(2)*g*sin(theta(1));
Ft2_0_25 = Fd2_0_25 + Fr2_0_25 + Fg2_0_25;
Pt2_0_25 = Ft2_0_25*vel(1);

% At velocity 25 kmph and theta = 5 degree
Fd2_5_25 = 0.5*Cd(2)*A(2)*rho*(vel(1)^2);
Fr2_5_25 = M(2)*mu*g*cos(theta(2));
Fg2_5_25 = M(2)*g*sin(theta(2));
Ft2_5_25 = Fd2_5_25 + Fr2_5_25 + Fg2_5_25;
Pt2_5_25 = Ft2_5_25*vel(1);

% At velocity 25 kmph and theta = 10 degree
Fd2_10_25 = 0.5*Cd(2)*A(2)*rho*(vel(1)^2);
Fr2_10_25 = M(2)*mu*g*cos(theta(3));
Fg2_10_25 = M(2)*g*sin(theta(3));
Ft2_10_25 = Fd2_10_25 + Fr2_10_25 + Fg2_10_25;
Pt2_10_25 = Ft2_10_25*vel(1);

% At velocity 50 kmph and theta = 0 degree
Fd2_0_50 = 0.5*Cd(2)*A(2)*rho*(vel(2)^2);
Fr2_0_50 = M(2)*mu*g*cos(theta(1));
Fg2_0_50 = M(2)*g*sin(theta(1));
Ft2_0_50 = Fd2_0_50 + Fr2_0_50 + Fg2_0_50;
Pt2_0_50 = Ft2_0_50*vel(2);

% At velocity 50 kmph and theta = 5 degree
Fd2_5_50 = 0.5*Cd(2)*A(2)*rho*(vel(2)^2);
Fr2_5_50 = M(2)*mu*g*cos(theta(2));
Fg2_5_50 = M(2)*g*sin(theta(2));
Ft2_5_50 = Fd2_5_50 + Fr2_5_50 + Fg2_5_50;
Pt2_5_50 = Ft2_5_50*vel(2);

% At velocity 50 kmph and theta = 10 degree
Fd2_10_50 = 0.5*Cd(2)*A(2)*rho*(vel(2)^2);
Fr2_10_50 = M(2)*mu*g*cos(theta(3));
Fg2_10_50 = M(2)*g*sin(theta(3));
Ft2_10_50 = Fd2_10_50 + Fr2_10_50 + Fg2_10_50;
Pt2_10_50 = Ft2_10_50*vel(2);

% At velocity 100 kmph and theta = 0 degree
Fd2_0_100 = 0.5*Cd(2)*A(2)*rho*(vel(3)^2);
Fr2_0_100 = M(2)*mu*g*cos(theta(1));
Fg2_0_100 = M(2)*g*sin(theta(1));
Ft2_0_100 = Fd2_0_100 + Fr2_0_100 + Fg2_0_100;
Pt2_0_100 = Ft2_0_100*vel(3);

% At velocity 100 kmph and theta = 5 degree
Fd2_5_100 = 0.5*Cd(2)*A(2)*rho*(vel(3)^2);
Fr2_5_100 = M(2)*mu*g*cos(theta(2));
Fg2_5_100 = M(2)*g*sin(theta(2));
Ft2_5_100 = Fd2_5_100 + Fr2_5_100 + Fg2_5_100;
Pt2_5_100 = Ft2_5_25*vel(3);

% At velocity 100 kmph and theta = 10 degree
Fd2_10_100 = 0.5*Cd(2)*A(2)*rho*(vel(3)^2);
Fr2_10_100 = M(2)*mu*g*cos(theta(3));
Fg2_10_100 = M(2)*g*sin(theta(3));
Ft2_10_100 = Fd2_10_100 + Fr2_10_100 + Fg2_10_100;
Pt2_10_100 = Ft2_10_100*vel(3);

% FOR 4W

% At velocity 25 kmph and theta = 0 degree
Fd3_0_25 = 0.5*Cd(3)*A(3)*rho*(vel(1)^2);
Fr3_0_25 = M(3)*mu*g*cos(theta(1));
Fg3_0_25 = M(3)*g*sin(theta(1));
Ft3_0_25 = Fd3_0_25 + Fr3_0_25 + Fg3_0_25;
Pt3_0_25 = Ft3_0_25*vel(1);

% At velocity 25 kmph and theta = 5 degree
Fd3_5_25 = 0.5*Cd(3)*A(3)*rho*(vel(1)^2);
Fr3_5_25 = M(3)*mu*g*cos(theta(2));
Fg3_5_25 = M(3)*g*sin(theta(2));
Ft3_5_25 = Fd3_5_25 + Fr3_5_25 + Fg3_5_25;
Pt3_5_25 = Ft3_5_25*vel(1);

% At velocity 25 kmph and theta = 10 degree
Fd3_10_25 = 0.5*Cd(3)*A(3)*rho*(vel(1)^2);
Fr3_10_25 = M(3)*mu*g*cos(theta(3));
Fg3_10_25 = M(3)*g*sin(theta(3));
Ft3_10_25 = Fd3_10_25 + Fr3_10_25 + Fg3_10_25;
Pt3_10_25 = Ft3_10_25*vel(1);

% At velocity 50 kmph and theta = 0 degree
Fd3_0_50 = 0.5*Cd(3)*A(3)*rho*(vel(2)^2);
Fr3_0_50 = M(3)*mu*g*cos(theta(1));
Fg3_0_50 = M(3)*g*sin(theta(1));
Ft3_0_50 = Fd3_0_50 + Fr3_0_50 + Fg3_0_50;
Pt3_0_50 = Ft3_0_50*vel(2);

% At velocity 50 kmph and theta = 5 degree
Fd3_5_50 = 0.5*Cd(3)*A(3)*rho*(vel(2)^2);
Fr3_5_50 = M(3)*mu*g*cos(theta(2));
Fg3_5_50 = M(3)*g*sin(theta(2));
Ft3_5_50 = Fd3_5_50 + Fr3_5_50 + Fg3_5_50;
Pt3_5_50 = Ft3_5_50*vel(2);

% At velocity 50 kmph and theta = 10 degree
Fd3_10_50 = 0.5*Cd(3)*A(3)*rho*(vel(2)^2);
Fr3_10_50 = M(3)*mu*g*cos(theta(3));
Fg3_10_50 = M(3)*g*sin(theta(3));
Ft3_10_50 = Fd3_10_50 + Fr3_10_50 + Fg3_10_50;
Pt3_10_50 = Ft3_10_50*vel(2);

% At velocity 100 kmph and theta = 0 degree
Fd3_0_100 = 0.5*Cd(3)*A(3)*rho*(vel(3)^2);
Fr3_0_100 = M(3)*mu*g*cos(theta(1));
Fg3_0_100 = M(3)*g*sin(theta(1));
Ft3_0_100 = Fd3_0_100 + Fr3_0_100 + Fg3_0_100;
Pt3_0_100 = Ft3_0_100*vel(3);

% At velocity 100 kmph and theta = 5 degree
Fd3_5_100 = 0.5*Cd(3)*A(3)*rho*(vel(3)^2);
Fr3_5_100 = M(3)*mu*g*cos(theta(2));
Fg3_5_100 = M(3)*g*sin(theta(2));
Ft3_5_100 = Fd3_5_100 + Fr3_5_100 + Fg3_5_100;
Pt3_5_100 = Ft3_5_25*vel(3);

% At velocity 100 kmph and theta = 10 degree
Fd3_10_100 = 0.5*Cd(3)*A(3)*rho*(vel(3)^2);
Fr3_10_100 = M(3)*mu*g*cos(theta(3));
Fg3_10_100 = M(3)*g*sin(theta(3));
Ft3_10_100 = Fd3_10_100 + Fr3_10_100 + Fg3_10_100;
Pt3_10_100 = Ft3_10_100*vel(3);