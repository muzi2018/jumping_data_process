% f=figure;

clear;
close all;
figure(1);
%% data time=3 rate=0.2
%Recording com velocity; com position;
load('robot_without_arm/WBC/data_velocity.mat');
z_velocity_act=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act=z_velocity_act(:,2:end);
x_velocity_act=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act=x_velocity_act(:,2:end);

time=Velocity_Recording.lcm_timestamp;
time=time/5;

z_velocity_des=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des=z_velocity_des(:,2:end);
x_velocity_des=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des=x_velocity_des(:,2:end);


load('robot_without_arm/WBC/data_position.mat');
z_position_act=Position_Recording.actual_com(:,3)';
z_position_act=z_position_act(:,2:end);
x_position_act=Position_Recording.actual_com(:,1)';
x_position_act=x_position_act(:,2:end);

z_position_des=Position_Recording.des_com(:,3)';
z_position_des=z_position_des(:,2:end);
x_position_des=Position_Recording.des_com(:,1)';
x_position_des=x_position_des(:,2:end);

%% plot
subplot(2,2,1)
plot(time,x_velocity_act,'--');
hold on;
plot(time,x_velocity_des,'--');
legend('actual vx','des vx');

subplot(2,2,2)
plot(time,z_velocity_act,'--');
hold on;
plot(time,z_velocity_des,'--');
legend('actual vz','des vz');

subplot(2,2,3)
plot(time,x_position_act,'--');
hold on;
plot(time,x_position_des,'--');
legend('actual x','des x');

subplot(2,2,4)
plot(time,z_position_act,'--');
hold on;
plot(time,z_position_des,'--');
legend('actual z','des z');



% x = [-0.06,-0.0341939,-0.0191825,-0.0206728,-0.0301985,-0.0376489,-0.0313267,-0.00755408,0.00872296,0.005,0];
% 
% z = [0.558486,0.419298,0.4,0.487982,0.537448,0.52648,0.515667,0.518329,0.522795,0.524192,0.524161];
% 
% vx = [0.2766,0.239522,0.0607074,-0.0905141,-0.1,-0.0490074,0.175452,0.3,0.0255408,-0.1,0];
% 
% vz = [-1.63818,-1.14559,0.759635,1,-0.0106725,-0.208699,-0.00754681,0.0607756,0.0285497,-0.000614095,0];
% 
% ax = [0,-0.741569,-2.83471,-0.189717,0,1.01985,3.46933,-0.978368,-4.51082,2,0];
% 
% az = [-9.8,19.6519,18.4526,-13.6453,-6.56817,2.60764,1.41541,-0.0489592,-0.595558,0.0122819,-2.13208e-08];



x=[-0.06,-0.0341939,-0.0191825,-0.0206728,-0.0301985,-0.0376489,-0.0313267,-0.00755408,0.00872296,0.005,0];
z = [0.558486,0.419298,0.4,0.487982,0.537448,0.52648,0.515667,0.518329,0.522795,0.524192,0.524161];

vx = [0.2766,0.239522,0.0607074,-0.0905141,-0.1,-0.0490074,0.175452,0.3,0.0255408,-0.1,0];

vz = [-1.63818,-1.14559,0.759635,1,-0.0106725,-0.208699,-0.00754681,0.0607756,0.0285497,-0.000614095,0];

ax = [0,-0.741569,-2.83471,-0.189717,0,1.01985,3.46933,-0.978368,-4.51082,2,0];

az = [-9.8,19.6519,18.4526,-13.6453,-6.56817,2.60764,1.41541,-0.0489592,-0.595558,0.0122819,-2.13208e-08];


node_num=size(z);
node_num=node_num(2);
time=zeros(1,node_num);
dt=0.01;
for i=1:node_num
    time(i)=(i-1)*dt;
end

figure(2)
subplot(2,4,1)
plot(x,time);
xlim([-0.2,0.2])
title("com x");
xlabel 'time'; 
ylabel 'x'; 

subplot(2,4,2)
plot(time,z);
title("com z");
xlabel 'time'; 
ylabel 'z'; 


vx=vx';
node_num=size(vx);
node_num=node_num(1);
time=zeros(1,node_num);

for i=1:node_num
    time(i)=(i-1)*dt;
end
subplot(2,4,3)
plot(time,vx);
title("com vx");
xlabel 'time'; 
ylabel 'vx'; 

vz=vz';
node_num=size(vz);
node_num=node_num(1);
time=zeros(1,node_num);

for i=1:node_num
    time(i)=(i-1)*dt;
end
subplot(2,4,4)
plot(time,vz);
title("com vz");
xlabel 'time'; 
ylabel 'vz'; 

ax=ax';
node_num=size(vx);
node_num=node_num(1);
time=zeros(1,node_num);

for i=1:node_num
    time(i)=(i-1)*dt;
end
subplot(2,4,5)
plot(time,ax);
ylim([-1,2])
title("com ax");
xlabel("time");
ylabel("ax");


az=az';
node_num=size(az);
node_num=node_num(1);
time=zeros(1,node_num);

for i=1:node_num
    time(i)=(i-1)*dt;
end
subplot(2,4,6)
plot(time,az);
title("com az");
xlabel("time");
ylabel("az");

subplot(2,4,7)
plot(x,z);
xlim([-0.2,0.2]);
ylim([0,0.7]);
title("com");
xlabel("x");
ylabel("z");
hold on;
