clear;clc;
load('v_nas.mat');
Velocity_Recording.des_com_velocity=Velocity_Recording.des_com_velocity(29521-5000:end,:);
Velocity_Recording.actual_com_velocity=Velocity_Recording.actual_com_velocity(29521-5000:end,:);
Velocity_Recording.pitch_moment=Velocity_Recording.pitch_moment(29521-5000:end,:);
load('h_0.15_l_0.1_v_as.mat')

Velocity_Recording.lcm_timestamp=Velocity_Recording.lcm_timestamp;

aa=1;
