x=[0.12,0.125,0.13,0.125,0.12];
node_num=size(x);
vx=zeros(node_num);
vx(1)=0.28;
dt=0.2;
vx=Cal_node_val(x,vx,node_num,dt);

function r=Cal_node_val(arr,arr_dot,node_num,dt)
    for i=1:1:(node_num(2)-1)
        arr_dot(i+1)=2*(arr(i+1)-arr(i))/dt-arr_dot(i);
    end
    r=arr_dot;
end













% close;
% f1=figure;
% 
% %L=250,dt=0.2,nodenum=5;
% z1=[0.56,0.32,0.336105,0.440679,0.45551,0.451873];
% z1=z1';
% node_num=size(z1);
% node_num=node_num(1);
% time=zeros(1,node_num);
% dt=0.2;
% for i=1:node_num
%     time(i)=(i-1)*dt;
% end
% plot(time,z1);
% title("com");
% hold on;
% 
% %L=250,dt=0.1,nodenum=11;
% z1=[0.56,0.4155,0.33916,0.32,0.338601,0.377245,0.410382,0.438045,0.452399,0.453188,0.451873];
% z1=z1';
% node_num=size(z1);
% node_num=node_num(1);
% time=zeros(1,node_num);
% dt=0.1;
% for i=1:node_num
%     time(i)=(i-1)*dt;
% end
% plot(time,z1);
% 
% 
% 
% z1=[-1.7,-1.19,-0.336806,-0.0463788,0.418388,0.354503,0.308234,0.24503,0.0420506,-0.0262863,0];
% z1=z1';
% node_num=size(z1);
% node_num=node_num(1);
% time=zeros(1,node_num);
% dt=0.1;
% for i=1:node_num
%     time(i)=(i-1)*dt;
% end
% plot(time,z1);
% legend('L=250 nodenum=6 dt=0.2','L=250 nodenum=11 dt=0.1','L=250 nodenum=11 dt=0.1 vz');


























close all;
f1=figure;
%L=250,dt=0.1,nodenum=11;



x = [-0.164074,-0.150525,-0.131009,-0.101353,-0.0820402,-0.0626024,-0.0454269,-0.0481985,-0.0382389,-0.0116316,0];

z = [0.575975,0.464303,0.391482,0.385396,0.415708,0.4571,0.484666,0.489168,0.487018,0.488415,0.489652];

vx = [0.177668,0.0933121,0.297,0.296126,0.0901341,0.298621,0.0448891,-0.100322,0.299513,0.232633,0];

vz = [-1.09221,-1.14124,-0.315181,0.193473,0.412757,0.415099,0.136219,-0.0461924,0.00319728,0.0247463,0];

ax = [0,-1.68712,5.76087,-5.77835,1.65852,2.51122,-7.58586,4.68165,3.31505,-4.65266,0];

az = [-9.8,8.81942,7.70174,2.47132,1.91436,-1.86751,-3.7101,0.0618858,0.925908,-0.494927,0];


figure(1)
subplot(2,4,1)
x=x';
z=z';
node_num=size(z);
node_num=node_num(1);
time=zeros(1,node_num);
dt=0.1;
for i=1:node_num
    time(i)=(i-1)*dt;
end
plot(x,time);
xlim([-0.2,0.2])
title("com x");
xlabel 'time'; 
ylabel 'x'; 

subplot(2,4,1)
fxz=figure;
plot(x,z);
xlim([-0.2,0.2]);
ylim([0,0.7]);
title("com");


f11=figure;
plot(time,z);
title("com z");





f2=figure;
%L=250,dt=0.1,nodenum=11;

vx=vx';
node_num=size(vx);
node_num=node_num(1);
time=zeros(1,node_num);
dt=0.1;
for i=1:node_num
    time(i)=(i-1)*dt;
end
plot(time,vx);
xlabel("time");
ylabel("vx");
title("vx");
hold on;

f3=figure;
%L=250,dt=0.1,nodenum=11;
vz=vz';
node_num=size(vz);
node_num=node_num(1);
time=zeros(1,node_num);
dt=0.1;
for i=1:node_num
    time(i)=(i-1)*dt;
end
plot(time,vz);
xlabel("time");
ylabel("vz");
title("vz");
hold on;


f4=figure;
%L=250,dt=0.1,nodenum=11;
ax=ax';
node_num=size(vx);
node_num=node_num(1);
time=zeros(1,node_num);
dt=0.1;
for i=1:node_num
    time(i)=(i-1)*dt;
end
plot(time,ax);
xlabel("time");
ylabel("ax");
title("ax");


f5=figure;
%L=250,dt=0.1,nodenum=11;
az=az';
node_num=size(az);
node_num=node_num(1);
time=zeros(1,node_num);
dt=0.1;
for i=1:node_num
    time(i)=(i-1)*dt;
end
plot(time,az);
xlabel("time");
ylabel("az");
title("az");

% legend('L=250 nodenum=6 dt=0.2','L=250 nodenum=11 dt=0.1','L=250 nodenum=11 dt=0.1 vz');




