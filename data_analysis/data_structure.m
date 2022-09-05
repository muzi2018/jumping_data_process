% Channel = Velocity_Recording
% Channel = Energy_Recording
% Channel = Joint_Position_Recording

% lcm-logger -f --channel=Velocity_Recording data_v.lcm
% lcm-logger -f --channel=Energy_Recording data_e.lcm
% lcm-logger -f --channel=Joint_Position_Recording data_j.lcm
% ./log_convert.sh ~/data_v.lcm /home/taizun/jumping_data/data_analysis/h=0.1_l=0.1/v_as.mat
% ./log_convert.sh ~/data_e.lcm /home/taizun/jumping_data/data_analysis/h=0.1_l=0.1/energy_as.mat
% ./log_convert.sh ~/data_j.lcm /home/taizun/jumping_data/data_analysis/h=0.1_l=0.1/joint_as.mat

%% h=[0.1,0.15,0.2] l=[0.1,0.15,0.2]
% h=0.1, l=0.1;
% h=0.1, l=0.15;
% h=0.1, l=0.2;

% h=0.15, l=0.1;------------get 
% h=0.15, l=0.15;------------get 
% h=0.15, l=0.2;

% h=0.2, l=0.1;
% h=0.2, l=0.15;
% h=0.2, l=0.2;
clc;clear;
load('h_0.15_l_0.1_energy_nas.mat');
power_joint_(1:5001,:)=Energy_Recording.power_joint(20004-5000:end,:);
Energy_Recording.power_joint=power_joint_;

load('h=0.15_l=0.15/v_nas.mat');
Energy_Recording.lcm_timestamp=Velocity_Recording.lcm_timestamp;

aaa=1;
