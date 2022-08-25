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
load('h=0.15_l=0.2/v_nas.mat');
Velocity_Recording.actual_com_velocity_(1:5001,1)=Velocity_Recording.actual_com_velocity(29191-5000:end,1);
Velocity_Recording.actual_com_velocity_(1:5001,2)=Velocity_Recording.actual_com_velocity(29191-5000:end,2);
Velocity_Recording.actual_com_velocity_(1:5001,3)=Velocity_Recording.actual_com_velocity(29191-5000:end,3);
Velocity_Recording.actual_com_velocity=Velocity_Recording.actual_com_velocity_;

Velocity_Recording.des_com_velocity_(1:5001,1)=Velocity_Recording.des_com_velocity(29191-5000:end,1);
Velocity_Recording.des_com_velocity_(1:5001,2)=Velocity_Recording.des_com_velocity(29191-5000:end,2);
Velocity_Recording.des_com_velocity_(1:5001,3)=Velocity_Recording.des_com_velocity(29191-5000:end,3);
Velocity_Recording.des_com_velocity=Velocity_Recording.des_com_velocity_;

Velocity_Recording.pitch_moment_(1,1:5001)=Velocity_Recording.pitch_moment(1,29191-5000:end);
Velocity_Recording.pitch_moment=Velocity_Recording.pitch_moment_;

load('h=0.15_l=0.15/v_nas.mat');
lcm_timestamp=Velocity_Recording.lcm_timestamp;

aaa=1;
