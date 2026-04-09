%% INPUT DATASET
clear
close all
clc

%% VEHICLE PARAMETERS
m   = 1521;  % 𝑣𝑒ℎ𝑖𝑐𝑙𝑒 𝑚𝑎𝑠𝑠
fr  = 0.015; % 𝑟𝑜𝑙𝑙𝑖𝑛𝑔 𝑟𝑒𝑠𝑖𝑠𝑡𝑎𝑛𝑐𝑒 𝑐𝑜𝑒𝑓𝑓𝑖𝑐𝑖𝑒𝑛𝑡
g   = 9.81;  % 𝑔𝑟𝑎𝑣𝑖𝑡𝑎𝑡𝑖𝑜𝑛𝑎𝑙 𝑎𝑐𝑐𝑒𝑙𝑒𝑟𝑎𝑡𝑖𝑜𝑛
rho = 1.2;   % 𝑎𝑖𝑟 𝑑𝑒𝑛𝑠𝑖𝑡𝑦
Cd  = 0.28;  % 𝑑𝑟𝑎𝑔 𝑐𝑜𝑒𝑓𝑓𝑖𝑐𝑖𝑒𝑛𝑡
Af  = 2.33;  % 𝑓𝑟𝑜𝑛𝑡𝑎𝑙 𝑎𝑟𝑒𝑎
eta = 0.93;  % 𝑡ℎ𝑒 𝑒𝑓𝑓𝑖𝑐𝑖𝑒𝑛𝑐𝑦
R   = 0.5;   % wheel radius

%% IMPORT FROM EXCEL
%elevation profile
date_elev = readmatrix('ElevationPro.xlsx');
elev_date_1 = date_elev(:,1);
elev_date_2 = date_elev(:,2);

%slope profile
date_slope = readmatrix('GradientPro.xlsx');
slope_date_1 = date_slope(:,1);
slope_date_2_grad = date_slope(:,2);
slope_date_2_degree = zeros(length(slope_date_2_grad),1);

for i = 1:length(slope_date_2_grad)
    slope_date_2_grad(i) = slope_date_2_grad(i)/100;
    slope_date_2_degree(i) = atan(slope_date_2_grad(i));
end
