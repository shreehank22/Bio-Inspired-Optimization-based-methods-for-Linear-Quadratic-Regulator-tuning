% Parameters for missile flying at Mach 2.5 (~737.5 m/s) at 20,000 feet (6096 meters)
Lu = 400;  % Longitudinal scale length (meters)
Lv = 250;  % Lateral scale length (meters)
Lw = 150;  % Vertical scale length (meters)
V = 737.5; % Missile velocity (m/s)
sigma_u = 1.5;  % Longitudinal turbulence intensity (m/s)
sigma_v = 1;    % Lateral turbulence intensity (m/s)
sigma_w = 0.75; % Vertical turbulence intensity (m/s)

% 1-cosine gust parameters
A_gust = 5;  % Gust amplitude (m/s)
L_gust = 100; % Gust length (meters)

% Time vector for simulation
t = 0:0.0001:6;  % Simulate for 10 seconds

% Dryden model (Transfer function based)
% Define transfer functions for Dryden gust model
Hu = tf(sqrt(2 * sigma_u^2 * Lu / V), [Lu/V 1]);
Hv = tf(sigma_v * sqrt(Lv / V), [Lv/V 1]);
Hw = tf(sigma_w * sqrt(Lw / V), [Lw/V 1]);

% Generate white noise input (stochastic process for Dryden model)
white_noise = randn(size(t));

% Simulate Dryden gust turbulence using lsim
u_gust_dryden = lsim(Hu, white_noise, t);
v_gust_dryden = lsim(Hv, white_noise, t);
w_gust_dryden = lsim(Hw, white_noise, t);

% 1-cosine gust model (deterministic)
% Time duration for the gust to act
t_gust_duration = L_gust / V;

% Define 1-cosine gust for vertical wind (assuming gust acts in vertical direction)
w_gust_1cos = zeros(size(t));
for i = 1:length(t)
    if t(i) <= t_gust_duration
        w_gust_1cos(i) = A_gust / 2 * (1 - cos(2 * pi * V * t(i) / L_gust));
    else
        w_gust_1cos(i) = 0;  % No gust after the duration
    end
end

% Combine the effects of Dryden gust turbulence and 1-cosine gust
u_combined = u_gust_dryden;  % Only Dryden gust in the longitudinal direction
% Plot the results
plot(t, u_combined);
title('Longitudinal Gust (Dryden)');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
