%% Task 3 lab1

gravity = 9.8; % m/s^2
distance = 183; % m
initialVelo_ms = sqrt(distance * gravity);
initialVelo_kmh = initialVelo_ms * 3.6;
fprintf("Initial velocity in km/h: " + initialVelo_kmh);

%% Task 4 lab1

gravity = 9.8; % m/s^2
distance = 183; % m
initialVelo_kmh = 125; % km/h
initialVelo_ms = initialVelo_kmh / 3.6; % m/s
angle1 = 45; % degree
y_end = 0; % because projectile land when time end.

x_end = distance;

total_time = x_end / ( initialVelo_ms * cosd(angle1) );

% divide the total time into different timeframe;
time_array = 0:0.1:total_time;

% position of x according to each timeframe
x_array = initialVelo_ms * time_array * cosd(angle1);

% initial height 
initialHeight = y_end + ( 1/2 * gravity * power(total_time, 2) - ( initialVelo_ms* total_time * sind( angle1 ) ));

% position of y according to each timeframe
y_array = initialHeight + initialVelo_ms * time_array * sind(angle1) - ( 1/2 * gravity * power(time_array, 2));

plot(x_array, y_array);
xlabel("Distance travelled");
ylabel("Height");
title("45 degree projectile motion");

angle2 = 35;

syms t
eqn = initialHeight + initialVelo_ms * t * sind(angle2) - (1/2) * gravity * power(t, 2) == 0;
total_time_2 = solve(eqn, t);

a = (-1/2) * gravity;
b = initialVelo_ms * sind(angle2);
c = initialHeight - y_end;

delta = power(b, 2) - 4 * a * c;
if delta > 0
    disp("2 real solution");
    ans1 = (-b + sqrt(delta))/ 2 * a;
    ans2 = (-b - sqrt(delta))/ 2 * a;
    disp(ans1);
    disp(ans2);
elseif delta ==0
    disp("one solution");
elseif delta < 0
    disp ("no real solution");
end

