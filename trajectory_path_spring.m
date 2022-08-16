clear;
close all;
%% data time=0.2 rate=.2
%%% robot with arm 
load('robot_with_arm/WBC/h=0.4_l=0.2/velocity.mat');
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);

z_velocity_des=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des=z_velocity_des(:,2:end);
x_velocity_des=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des=x_velocity_des(:,2:end);
time=Velocity_Recording.lcm_timestamp;
time=time/5;

%%% robot with arm no swing
load('robot_with_arm/WBC/h=0.4_l=0.2/velocity_noarmcontrol.mat');
z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);

% %% robot without arm
load('robot_without_arm/WBC/h=0.4_l=0.2/velocity.mat');
z_velocity_act_without_arm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_without_arm=z_velocity_act_without_arm(:,2:end);
x_velocity_act_without_arm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_without_arm=x_velocity_act_without_arm(:,2:end);


%% subplot
f1=figure;

% plot(time,x_velocity_act_witharm,'--');
% hold on;
% plot(time,x_velocity_des);
% xlabel("time (s)");
% ylabel("vx (m/s)");
% legend('vx actual','vx des');
% title("vx comp with arm, h=0.4,l=0.2,vx=0.35,t=0.2")
% saveas(f1,'vx_act_des_witharm.png')

% plot(time,z_velocity_act_witharm,'--');
% hold on;
% plot(time,z_velocity_des);
% xlabel("time (s)");
% ylabel("vz (m/s)");
% legend('vz actual','vz des');
% title("vz comp with arm, h=0.4,l=0.2,vz=2.8,t=0.2")
% saveas(f2,'vz_act_des_witharm.png')


% plot(time,x_velocity_act_without_arm,'--');
% hold on;
% plot(time,x_velocity_des);
% xlabel("time (s)");
% ylabel("vx (m/s)");
% legend('vx actual','vx des');
% title("vx comp without arm, h=0.4,l=0.2,vx=0.35,t=0.2")
% saveas(f2,'vz_act_des_witharm.png')


% plot(time,z_velocity_act_without_arm,'--');
% hold on;
% plot(time,z_velocity_des);
% xlabel("time (s)");
% ylabel("vz (m/s)");
% legend('vz actual','vz des');
% title("vz comp without arm, h=0.4,l=0.2,vz=2.8,t=0.2")
% saveas(f2,'vz_act_des_witharm.png')

% plot(time,x_velocity_act_without_arm);
% hold on;
% plot(time,x_velocity_act_witharm);
% xlabel("time (s)");
% ylabel("vx (m/s)");
% legend('vx withoutarm','vx witharm');
% title("vx comp between with and without arm, h=0.4,l=0.2,vx=0.35,t=0.2")


% plot(time,z_velocity_act_without_arm);
% hold on;
% plot(time,z_velocity_act_witharm);
% xlabel("time (s)");
% ylabel("vz (m/s)");
% legend('vz withoutarm','vz witharm');
% title("vz comp between with and without arm, h=0.4,l=0.2,vz=2.8,t=0.2")

% plot(time,z_velocity_act_witharm_noswing,'--');
% hold on;
% plot(time,z_velocity_des);
% xlabel("time (s)");
% ylabel("vz (m/s)");
% legend('vz witharm-noswing','vz des');
% title("vz comp between noswing and des, h=0.4,l=0.2,vz=2.8,t=0.2")

% plot(time,x_velocity_act_witharm_noswing,'--');
% hold on;
% plot(time,x_velocity_des);
% xlabel("time (s)");
% ylabel("vx (m/s)");
% legend('vx witharm-noswing','vx des');
% title("vx comp between noswing and des, h=0.4,l=0.2,vx=0.35,t=0.2");

% plot(time,z_velocity_act_witharm_noswing);
% hold on;
% plot(time,z_velocity_act_witharm);
% xlabel("time (s)");
% ylabel("vz (m/s)");
% legend('vz noswing','vz swing');
% title("vz comp between noswing and swing, h=0.4,l=0.2,vz=2.8,t=0.2");
% saveas(f1,'vz_noswing_swing_witharm.png')

plot(time,x_velocity_act_witharm_noswing);
hold on;
plot(time,x_velocity_act_witharm);
xlabel("time (s)");
ylabel("vx (m/s)");
legend('vx noswing','vx swing');
title("vx comp between noswing and swing, h=0.4,l=0.2,vx=0.35,t=0.2");

% plot(time,z_velocity_act_witharm_noswing);
% hold on;
% plot(time,z_velocity_act_without_arm);
% xlabel("time (s)");
% ylabel("vz (m/s)");
% legend('vz noswing','vz withoutarm');
% title("vz comp between noswing and withoutarm, h=0.4,l=0.2,vz=2.8,t=0.2");
%% subplot
% f1=subplot(2,4,1);
% plot(time,x_velocity_act_witharm,'--');
% hold on;
% plot(time,x_velocity_des);
% legend('vx witharm','vx des');
% ff=figure;
% hax_new = copyobj(f1, ff);
% set(hax_new, 'Position', get(0, 'DefaultAxesPosition'));
% saveas(hax_new, 'Barchart.png')
% 
% subplot(2,4,2)
% plot(time,z_velocity_act_witharm,'--');
% hold on;
% plot(time,z_velocity_des);
% legend('vz witharm','vz des');
% 
% 
% subplot(2,4,3)
% plot(time,x_velocity_act_without_arm,'--');
% hold on;
% plot(time,x_velocity_des);
% legend('vx withoutarm','vx des');
% 
% 
% subplot(2,4,4)
% plot(time,z_velocity_act_without_arm,'--');
% hold on;
% plot(time,z_velocity_des);
% legend('vz withoutarm','vz des');
% 
% subplot(2,4,5)
% plot(time,x_velocity_act_without_arm,'--');
% hold on;
% plot(time,x_velocity_act_witharm);
% legend('vx withoutarm','vx witharm');
% 
% subplot(2,4,6)
% plot(time,z_velocity_act_without_arm,'--');
% hold on;
% plot(time,z_velocity_act_witharm);
% legend('vz withoutarm','vz witharm');

%% opt trajectory plot
x = [0,0.00146574,0.00543148,0.0103625,0.0152936,0.0201603,0.025027,0.030027,0.035027,0.040027,0.045027,0.050027,0.0547516,0.0594763,0.0644763,0.0694763,0.0744763,0.0794763,0.0844763,0.0881888,0.0908937];

z = [0.38813,0.38813,0.38813,0.38813,0.38813,0.38813,0.388154,0.388318,0.388892,0.390219,0.392579,0.396169,0.401536,0.409244,0.419428,0.432381,0.448535,0.468112,0.491332,0.51874,0.55];

vx = [0,0.293148,0.5,0.486212,0.5,0.473336,0.5,0.5,0.5,0.5,0.5,0.5,0.444932,0.5,0.5,0.5,0.5,0.5,0.5,0.242497,0.298481];

vz = [0,8.67362e-17,6.93889e-18,6.93889e-18,5.55112e-17,-7.13596e-14,0.00481983,0.0280115,0.0867683,0.178643,0.2933,0.424773,0.648649,0.89284,1.14389,1.44672,1.78416,2.13125,2.51283,2.96869,3.28329];

ax = [0,58.6296,-17.2592,14.5016,-11.744,6.41117,-1.07833,1.07833,-1.07833,1.07833,-1.07833,1.07833,-12.0918,23.1054,-23.1054,23.1054,-23.1054,23.1054,-23.1054,-28.3952,39.592];

az = [0,0,0,0,0,0,0.963966,3.67437,8.07699,10.2979,12.6337,13.6608,31.1145,17.7237,32.4869,28.0781,39.4108,30.0072,46.3092,44.862,18.0581];

r = [0.38813,0.38813,0.388144,0.388248,0.388593,0.389377,0.390775,0.39291,0.395881,0.399761,0.404676,0.410707,0.417945,0.42665,0.437158,0.449799,0.464724,0.482061,0.501846,0.524234,0.550178];

beta_ref = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

theta_ref = [0,0,-9.39687e-06,-3.75875e-05,-5.62365e-05,-5.58743e-05,-7.43051e-05,-0.000144211,-0.000240328,-0.000284656,-0.000280744,-0.000277507,-0.000277797,-0.000381917,-0.000722123,-0.00123545,-0.0018411,-0.00257975,-0.0034457,-0.00444543,-0.00573333];

thetadot_ref = [0,0,-0.00187937,-0.00375875,2.89407e-05,4.34909e-05,-0.00372965,-0.0102516,-0.0089717,0.000106013,0.000676439,-2.89969e-05,-2.89969e-05,-0.020795,-0.0472464,-0.055418,-0.0657133,-0.0820165,-0.0911741,-0.108771,-0.148809];

thetaddot_ref = [0,0,-0.375875,0,0.757538,-0.754628,0,-1.30439,1.56037,0.255172,-0.141087,0,0,-4.15319,-1.1371,-0.49722,-1.56185,-1.6988,-0.132719,-3.38663,-4.62108];


beta_ref=1.57-beta_ref;
beta=atan2(z,x);

x=x';
z=z';
node_num=size(z);
node_num=node_num(1);
time=zeros(1,node_num);
dt=0.01;
for i=1:node_num
    time(i)=(i-1)*dt;
end

figure(2)
subplot(4,4,1)
plot(x,time,'b');
xlim([-0.2,0.2])
title("com x");
xlabel 'x'; 
ylabel 'time'; 

subplot(4,4,2)
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
subplot(4,4,3)
plot(time,vx,'b');
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
subplot(4,4,4)
plot(time,vz,'b');
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
subplot(4,4,5)
plot(time,ax,'b');
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
subplot(4,4,6)
plot(time,az,'b');
title("com az");
xlabel("time");
ylabel("az");

subplot(4,4,7)
plot(x,z,'b');
xlim([-0.2,0.2]);
ylim([0,0.7]);
title("com");
xlabel("x");
ylabel("z");
hold on;
% legend('L=250 nodenum=6 dt=0.2','L=250 nodenum=11 dt=0.1','L=250 nodenum=11 dt=0.1 vz');


subplot(4,4,8)
plot(time,beta,'b');
title("beta");
xlabel("time");
ylabel("beta");
hold on;

subplot(4,4,9)
plot(time,beta_ref,'b');
title("beta-ref");
xlabel("time");
ylabel("beta-ref");
hold on;

subplot(4,4,10)
plot(time,r,'b');
title("r");
xlabel("time");
ylabel("r");
hold on;

subplot(4,4,11)
plot(time,theta_ref,'b');
title("theta-ref");
xlabel("time");
ylabel("theta-ref");
hold on;

subplot(4,4,12)
plot(time,thetadot_ref,'b');
title("thetadot-ref");
xlabel("time");
ylabel("thetadot-ref");
hold on;

subplot(4,4,13)
plot(time,thetaddot_ref,'b');
title("thetaddot-ref");
xlabel("time");
ylabel("thetaddot-ref");
hold on;
