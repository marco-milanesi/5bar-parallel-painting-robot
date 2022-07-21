%% sm_five_bar_robot Parameters Initialization

% Copyright 2020 The MathWorks, Inc.
%% Data for parts
%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(2).mass = 0.0;
smiData.Solid(2).CoM = [0.0 0.0 0.0];
smiData.Solid(2).MoI = [0.0 0.0 0.0];
smiData.Solid(2).PoI = [0.0 0.0 0.0];
smiData.Solid(2).color = [0.0 0.0 0.0];
smiData.Solid(2).opacity = 0.0;
smiData.Solid(2).ID = '';

%Specify Step Motor
%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 7.8334;  % kg
smiData.Solid(1).CoM = [-0.954433, 0.19295, 0.907383];  % m
smiData.Solid(1).MoI = [0.0638237, 0.0638308, 0.0443917];  % kg*m^2
smiData.Solid(1).PoI = [-6.298e-08, -1.51778e-08, -8.67906e-10];  % kg*m^2
smiData.Solid(1).color = [0.0 0.6 0.2];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Step_Motor*:*Default*:*Default';

%Specify Pen
%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.125393;  % kg
smiData.Solid(2).CoM = [1.50052e-19, -2.31555e-19, 0.0889221];  % m
smiData.Solid(2).MoI = [0.000338658, 0.000338658, 1.38414e-05];  % kg*m^2
smiData.Solid(2).PoI = [2.031370000000000e-10,5.951710000000000e-06,1.453210000000000e-13]; % kg*m^2
smiData.Solid(2).color = [1.0 0.0 0.0];
smiData.Solid(2).opacity = 1;
smiData.Solid(5).ID = 'Screw_x*:*Default';

%%
%============= RigidTransform =============%
smiData.RF(1).Offset = 0.02; % m
smiData.RF(1).ID = 'Offset between the hole and the motor mount*:*Default';



%% Motion data
smiData.Motion=load('trajectory_five_bar_robot.mat');



