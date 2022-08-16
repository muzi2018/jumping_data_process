f=figure;
load('data_with_arm.mat');
time=Velocity_Recording.lcm_timestamp;
z_velocity=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity=z_velocity(:,2:end);
plot(time,z_velocity,'--');
hold on;

load('data_without_arm_no.mat');
time=Velocity_Recording.lcm_timestamp;
z_velocity=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity=z_velocity(:,2:end);
plot(time,z_velocity,'-.');

z_velocity=Velocity_Recording.des_com_velocity(:,3)';
z_velocity=z_velocity(:,2:end);
plot(time,z_velocity);

legend('with_arm_com','without_arm_com','reference_com');


% legend('with_arm_com','without_arm_com');

% f1=figure;
% z=[0.388137,0.388137,0.388137,0.388137,0.388137,0.388137,0.388137,0.388137,0.391143,0.432309,0.569463];
% t=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
% plot(t,z,'-b*');
% 
% z=[];
% t=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0];
% plot(t,z,'-g*');
% 
% z=[];
% t=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.0];
% plot(t,z,'-c*');
% 
% legend('node=11','node=21','node=31');
% xlabel('t');
% ylabel('z');