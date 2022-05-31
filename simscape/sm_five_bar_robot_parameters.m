%% sm_five_bar_robot Parameters Initialization

% Robot characteristcs [m]
l1 = 0.5; l1_w = 0.1; l1_h = 0.03; % link1
l2 = 1;   l2_w = 0.1; l2_h = 0.03;% link2
h = 0.8; % height
l0 = 0.5; % shoulder difference

L=[h; l0; l1; l2]';

g1=l1/2;  g2=l1/2; % link1
g3=l2/2;  g4=l2/2; %link2

G=[g1; g2; g3; g4];

m1 = 10; % link1
m2 = 3; %link2
m_gripper = 1; % gripper




%% Data for parts
%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

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

%Specify Link 1
smiData.Solid(3).mass = 0.0; % kg
smiData.Solid(3).CoM = [0.0 0.0 0.0]; % m
smiData.Solid(3).MoI = [0.0 0.0 0.0]; % kg*m^2
smiData.Solid(3).PoI = [0.0 0.0 0.0]; % kg*m^2

%Specify Link 2
smiData.Solid(4).mass = 0.0; % kg
smiData.Solid(4).CoM = [0.0 0.0 0.0]; % m
smiData.Solid(4).MoI = [0.0 0.0 0.0]; % kg*m^2
smiData.Solid(4).PoI = [0.0 0.0 0.0]; % kg*m^2


%%
%============= RigidTransform =============%
smiData.RF(1).Offset = l0; % m       
smiData.RF(1).ID = 'Offset between the hole and the motor mount*:*Default';





