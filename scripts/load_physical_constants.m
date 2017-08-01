% Sampling constants
T_s = 20e-3;
f_s = 1/T_s;

% Consants (context)
m = 0.24200; % Mass of the zumo
b = 0.1; % Friction coeficient of cart
l_1 = 0.062;
l_2 = 0;
l = l_1; % Height of the zumo
beta_m = 0.1;
beta_gamma = 0.01;

g =  9.8100; % Gravitational constant
R = 0.019; % Wheele radius
R_i = 0.01; % Internal wheel radius;

I = m*(l_1/2 + l_2)^2; % Intertial momentum

m_w = 0.004; % Mass of the wheel
m_c = 0.009; % Mass of the caterpillar band

I_w = m_w*R^2; % Inertia momentum of wheels
I_c = m_c*R^2; % Inertia momentum of Caterpilar band
I_ws = 2*I_w + I_c; % Inertia momentum of Caterpilar system

% Motor's constants
Ts2 = 150e-3;
sigma = 1;
omega_n = 3.9/(sigma * Ts2);
gear_ratio = 100.37;
count2cycle = 1/(12* gear_ratio);
motor_in_max = 400; % According to specs
motor_out_max = 2 * pi * f_s * 120 * count2cycle; % Experimentally
motor_stall_torque = 0.2180; % From specs 30 oz-in 
pulse2torque = motor_stall_torque/400;

% Simplifications
J = I + m*l^2;
a_1 = 2*sigma*omega_n;
b_1 = omega_n^2;
K = (motor_out_max / motor_in_max) *  b_1;
K_1 = m*l/J;