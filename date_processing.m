% f=figure;

clear;
close all;
figure(1);
%% data time=3 rate=0.2
%%% robot with arm 
load('robot_with_arm/WBC/data_velocity.mat');
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);

z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);

load('robot_with_arm/WBC/data_position.mat');
z_position_act_witharm=Position_Recording.actual_com(:,3)';
z_position_act_witharm=z_position_act_witharm(:,2:end);
x_position_act_witharm=Position_Recording.actual_com(:,1)';
x_position_act_witharm=x_position_act_witharm(:,2:end);

z_position_des_witharm=Position_Recording.des_com(:,3)';
z_position_des_witharm=z_position_des_witharm(:,2:end);
x_position_des_witharm=Position_Recording.des_com(:,1)';
x_position_des_witharm=x_position_des_witharm(:,2:end);


%%% robot without arm
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
plot(time,x_velocity_act_witharm,'--');
hold on;
plot(time,x_velocity_act,'--');
% hold on;
% plot(time,x_velocity_des);
% legend('vx witharm','vx withoutarm','vx des');
legend('vx witharm','vx withoutarm');
title("vx comp");

subplot(2,2,2)
plot(time,z_velocity_act_witharm,'--');
hold on;
plot(time,z_velocity_act,'--');
% hold on;
% plot(time,z_velocity_des);
% legend('vz witharm','vz withoutarm','vz des');
legend('vz witharm','vz withoutarm');
title("vz comp");

subplot(2,2,3)
plot(time,x_position_act_witharm,'--');
hold on;
plot(time,x_position_act,'--');
% hold on;
% plot(time,x_position_des);
% legend('x witharm','x withoutarm','x des');
legend('x witharm','x withoutarm');
title("x comp");

subplot(2,2,4)
plot(time,z_position_act_witharm,'--');
hold on;
plot(time,z_position_act,'--');
% hold on;
% plot(time,z_position_des);
% legend('z witharm','z withoutarm','z des');
legend('z witharm','z withoutarm');
title("z comp");

% subplot(1,3,3)
% plot(time,x_position_act_swing,'--');
% hold on;
% plot(time,x_position_des_swing,'--');
% 
% legend('actual x swing','desire x swing');


% % f=figure;
% close all;
% figure(1)
% % load('robot_with_arm/WBC/data_arm_fix.mat');
% load('robot_with_arm/WBC/data_arm_swing.mat');
% time=Velocity_Recording.lcm_timestamp;
% time=time/2;
% z_velocity_act=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act=z_velocity_act(:,2:end);
% subplot(1,3,1)
% plot(time,z_velocity_act);
% title("actual vz");
% 
% z_velocity_des=Velocity_Recording.des_com_velocity(:,3)';
% z_velocity_des=z_velocity_des(:,2:end);
% subplot(1,3,2)
% plot(time,z_velocity_des);
% title("des vz");
% 
% 
% subplot(1,3,3)
% plot(time,z_velocity_act,'--');
% hold on;
% plot(time,z_velocity_des,'--');
% legend('actual vz','desire vz');
% hold on;









%% opt trajectory
% x = [-0.164074,-0.162299,-0.160527,-0.158752,-0.156961,-0.155138,-0.153275,-0.151372,-0.14943,-0.147447,-0.145424,-0.143361,-0.141258,-0.139115,-0.136933,-0.13471,-0.132447,-0.130144,-0.127801,-0.125418,-0.122996,-0.120533,-0.11803,-0.115487,-0.112904,-0.110281,-0.107619,-0.104916,-0.102173,-0.0993957,-0.09661,-0.09385,-0.09113,-0.08845,-0.08581,-0.08321,-0.08065,-0.07813,-0.07565,-0.07321,-0.07081,-0.06845,-0.06613,-0.06385,-0.06161,-0.05941,-0.05725,-0.05513,-0.05305,-0.05101,-0.04901,-0.04705,-0.04513,-0.04325,-0.04141,-0.03961,-0.03785,-0.03613,-0.03445,-0.03281,-0.03121,-0.02965,-0.02813,-0.02665,-0.02521,-0.02381,-0.02245,-0.02113,-0.01985,-0.01861,-0.01741,-0.01625,-0.01513,-0.01405,-0.01301,-0.01201,-0.01105,-0.01013,-0.00925,-0.00841,-0.00761,-0.00685,-0.00613,-0.00545,-0.00481,-0.00421,-0.00365,-0.00313,-0.00265,-0.00221,-0.00181,-0.00145,-0.00113,-0.00085,-0.00061,-0.00041,-0.00025,-0.00013,-5e-05,-1e-05,0];
% 
% z = [0.575975,0.56458,0.552302,0.539323,0.525903,0.512336,0.498922,0.485935,0.473599,0.462082,0.451493,0.441886,0.433278,0.425669,0.419061,0.413451,0.408839,0.405213,0.402555,0.400831,0.4,0.400008,0.400794,0.402292,0.404433,0.407145,0.410356,0.413997,0.418,0.4223,0.426838,0.431559,0.436411,0.441351,0.446337,0.451334,0.456311,0.461239,0.466094,0.470856,0.475507,0.480033,0.484421,0.488664,0.492755,0.496693,0.500475,0.504104,0.507584,0.510918,0.514113,0.517176,0.520113,0.522932,0.525638,0.528238,0.530737,0.533139,0.535448,0.537667,0.539798,0.541842,0.5438,0.545672,0.547459,0.549159,0.550774,0.552302,0.553744,0.5551,0.55637,0.557556,0.558658,0.559678,0.560616,0.561475,0.562256,0.562962,0.563593,0.564153,0.564645,0.565072,0.565439,0.565748,0.566007,0.566219,0.56639,0.566525,0.566629,0.566708,0.566766,0.566807,0.566836,0.566855,0.566867,0.566875,0.56688,0.566883,0.566885,0.566885,0.566886];
% 
% vx = [0.177668,0.177278,0.17718,0.177878,0.180284,0.184284,0.188284,0.192284,0.196284,0.200284,0.204284,0.208284,0.212284,0.216284,0.220284,0.224284,0.228284,0.232284,0.236284,0.240284,0.244284,0.248284,0.252284,0.256284,0.260283,0.264284,0.268284,0.272284,0.276284,0.279142,0.278,0.274,0.27,0.266,0.262,0.258,0.254,0.25,0.246,0.242,0.238,0.234,0.23,0.226,0.222,0.218,0.214,0.21,0.206,0.202,0.198,0.194,0.19,0.186,0.182,0.178,0.174,0.17,0.166,0.162,0.158,0.154,0.15,0.146,0.142,0.138,0.134,0.13,0.126,0.122,0.118,0.114,0.11,0.106,0.102,0.098,0.094,0.09,0.086,0.082,0.078,0.074,0.07,0.066,0.062,0.058,0.054,0.05,0.046,0.042,0.038,0.034,0.03,0.026,0.022,0.018,0.014,0.01,0.006,0.002,0];
% 
% vz = [-1.09221,-1.18684,-1.26875,-1.32708,-1.35687,-1.35647,-1.32635,-1.27105,-1.19607,-1.10737,-1.01057,-0.9108,-0.810811,-0.710856,-0.6109,-0.510971,-0.411551,-0.313557,-0.218148,-0.126514,-0.0397341,0.0413047,0.115941,0.183729,0.24442,0.297935,0.34434,0.383827,0.416695,0.443362,0.464262,0.479859,0.490684,0.497238,0.5,0.499408,0.495861,0.489729,0.481354,0.47106,0.459154,0.445944,0.431734,0.416819,0.401479,0.385972,0.370523,0.35533,0.340556,0.326329,0.312734,0.299819,0.287601,0.276065,0.26516,0.254815,0.244953,0.235491,0.22635,0.217452,0.208723,0.200096,0.191515,0.182941,0.174356,0.165751,0.157129,0.148502,0.139888,0.131307,0.122788,0.11436,0.106049,0.0978732,0.0898415,0.0819663,0.0742682,0.0667735,0.0595133,0.0525267,0.0458595,0.0395619,0.0336858,0.02828,0.023382,0.0190122,0.0151752,0.0118605,0.00905007,0.0067249,0.00485421,0.00339392,0.00229497,0.00150417,0.000961263,0.000603104,0.000374451,0.000228831,0.000126815,4.11738e-05,0];
% 
% ax = [-2.01948e-28,-0.0779462,0.058355,0.0811426,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.171649,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,-0.4,0];
% 
% az = [-9.8,-9.12686,-7.25329,-4.41281,-1.54664,1.62734,4.39629,6.66296,8.33404,9.40569,9.95544,9.99771,10,9.99113,10,9.98589,9.89805,9.70066,9.38124,8.9456,8.41031,7.79746,7.12976,6.42791,5.71028,4.99269,4.28839,3.60894,2.96457,2.36895,1.81094,1.30843,0.856574,0.454296,0.0981238,-0.216515,-0.49287,-0.733601,-0.941291,-1.11762,-1.26343,-1.37863,-1.46347,-1.51948,-1.54843,-1.55311,-1.53659,-1.50201,-1.45275,-1.39273,-1.32628,-1.25675,-1.18683,-1.12036,-1.06062,-1.00837,-0.964156,-0.928168,-0.900014,-0.879584,-0.866254,-0.859118,-0.857062,-0.857721,-0.859397,-0.861521,-0.862834,-0.86256,-0.860379,-0.855706,-0.848067,-0.837526,-0.824666,-0.810575,-0.795762,-0.779282,-0.760331,-0.738618,-0.713413,-0.683901,-0.649538,-0.609985,-0.565241,-0.515909,-0.463692,-0.410282,-0.357107,-0.305832,-0.256259,-0.208775,-0.165363,-0.126696,-0.0930942,-0.0650655,-0.0435158,-0.028116,-0.0176144,-0.0115097,-0.00889344,-0.00823474,-2.13208e-08];
x = [-0.06,-0.0341939,-0.0191825,-0.0206728,-0.0301985,-0.0376489,-0.0313267,-0.00755408,0.00872296,0.005,0];

z = [0.558486,0.419298,0.4,0.487982,0.537448,0.52648,0.515667,0.518329,0.522795,0.524192,0.524161];

vx = [0.2766,0.239522,0.0607074,-0.0905141,-0.1,-0.0490074,0.175452,0.3,0.0255408,-0.1,0];

vz = [-1.63818,-1.14559,0.759635,1,-0.0106725,-0.208699,-0.00754681,0.0607756,0.0285497,-0.000614095,0];

ax = [0,-0.741569,-2.83471,-0.189717,0,1.01985,3.46933,-0.978368,-4.51082,2,0];

az = [-9.8,19.6519,18.4526,-13.6453,-6.56817,2.60764,1.41541,-0.0489592,-0.595558,0.0122819,-2.13208e-08];x=x';
z=z';
node_num=size(z);
node_num=node_num(1);
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













% % load('data_with_arm.mat');
% % time=Velocity_Recording.lcm_timestamp;
% % z_velocity=Velocity_Recording.actual_com_velocity(:,3)';
% % z_velocity=z_velocity(:,2:end);
% % plot(time,z_velocity);
% % hold on;
% % 
% % load('data_without_arm_yes.mat');
% % time=Velocity_Recording.lcm_timestamp;
% % z_velocity=Velocity_Recording.actual_com_velocity(:,3)';
% % z_velocity=z_velocity(:,2:end);
% % plot(time,z_velocity);

% z_velocity=Velocity_Recording.des_com_velocity(:,3)';
% z_velocity=z_velocity(:,2:end);
% plot(time,z_velocity);

% legend('with_arm_com','without_arm_com','reference_com');


% % legend('with_arm_com','without_arm_com');
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



