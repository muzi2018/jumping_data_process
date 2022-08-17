close all;clc; clear;
load('h_0.15_l_0.1_joint_as.mat');
JP_AS=Joint_Position_Recording;
load('h_0.15_l_0.1_joint_nas.mat');
JP_NAS=Joint_Position_Recording;


time=Joint_Position_Recording.lcm_timestamp/5;
a=1;
num=200;
time=time(:,a:num);
f1=figure;
for i=1:4
    subplot(2, 2, i);
    plot(time, abs(JP_AS.Joint_array(i,a:num)-JP_NAS.Joint_array(i,a:num)));
    ylim([0 30])
end

f2=figure;
for i=1:2
    subplot(2, 1, i);
    plot(time, abs(JP_AS.Joint_array(i+2,a:num)-JP_NAS.Joint_array(i+2,a:num)));
    ylim([0 30])
end

f3=figure;
for i=1:4
    subplot(2, 2, i);
    plot(time, abs(JP_AS.Joint_array(i+6,a:num)-JP_NAS.Joint_array(i+6,a:num)));
    ylim([0 30])
end


f4=figure;
for i=1:4
    subplot(2, 2, i);
    plot(time, abs(JP_AS.Joint_array(i+10,a:num)-JP_NAS.Joint_array(i+10,a:num)));
    ylim([0 30])
end

f5=figure;
for i=1:2
    subplot(2, 1, i);
    plot(time, abs(JP_AS.Joint_array(i+14,a:num)-JP_NAS.Joint_array(i+14,a:num)));
    ylim([0 30])
end

sum_=sum(abs(JP_AS.Joint_array(1,a:num)-JP_NAS.Joint_array(1,a:num)))/5000;
aaa=0;


































plot(time, JP_AS.R_ShoulderRx(:,a:num),'b')
hold on;
plot(time, JP_NAS.R_ShoulderRx(:,a:num),'r')

JP_NA.abs_error(1,:)=abs_error.R_ShoulderRx;
aaa=JP_NA.abs_error(1,:);
plot(time,aaa(:,a:num));
xlabel('time (s)');ylabel('moment (N·m·s)');
hold on;
plot(time,Mp_AS(:,a:num));
hold on;
legend('NAS','AS');
set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');

Joint_Position_Recording.R_ShoulderRx=R_ShoulderRx;
Joint_Position_Recording.L_ShoulderRx=L_ShoulderRx;
Joint_Position_Recording.R_UpperArm=R_UpperArm;
Joint_Position_Recording.L_UpperArm=L_UpperArm;
Joint_Position_Recording.R_ForeArm=R_ForeArm;
Joint_Position_Recording.L_ForeArm=L_ForeArm;
Joint_Position_Recording.R_HipRz=R_HipRz;
Joint_Position_Recording.R_HipRx=R_HipRx;
Joint_Position_Recording.R_Thigh=R_Thigh;
Joint_Position_Recording.R_Knee=R_Knee;
Joint_Position_Recording.R_Ankle=R_Ankle;
Joint_Position_Recording.L_HipRz=L_HipRz;
Joint_Position_Recording.L_HipRx=L_HipRx;
Joint_Position_Recording.L_Thigh=L_Thigh;
Joint_Position_Recording.L_Knee=L_Knee;
Joint_Position_Recording.L_Ankle=L_Ankle;

plot(time,L_UpperArm(:,a:num),'LineWidth',1.2);
hold on;
plot(time,R_ForeArm(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('angle (deg)');
legend('UpperArm','ForeArm','Location', 'northwest');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');