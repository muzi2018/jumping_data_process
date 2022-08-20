close all;clc; clear;
load('h_0.15_l_0.1_joint_as.mat');
JP_AS=Joint_Position_Recording;
load('h_0.15_l_0.1_joint_nas.mat');
JP_NAS=Joint_Position_Recording;


%     data_record_->joint_position_position[0]=q_[9]; /// torso_to_R_ShoulderRx
%     data_record_->joint_position_position[1]=q_[10]; /// torso_to_L_ShoulderRx
%     data_record_->joint_position_position[2]=q_[13]; /// R_ShoulderRx_to_R_UpperArm
%     data_record_->joint_position_position[3]=q_[14]; /// L_ShoulderRx_to_L_UpperArm
%     data_record_->joint_position_position[4]=q_[17]; /// R_UpperArm_to_R_ForeArm
%     data_record_->joint_position_position[5]=q_[18]; /// L_UpperArm_to_L_ForeArm
% 
%     data_record_->joint_position_position[6]=q_[7]; /// torso_to_R_HipRz
%     data_record_->joint_position_position[7]=q_[11]; /// R_HipRz_to_R_HipRx
%     data_record_->joint_position_position[8]=q_[15]; /// R_HipRx_to_R_Thigh
%     data_record_->joint_position_position[9]=q_[19]; /// R_Knee
%     data_record_->joint_position_position[10]=q_[21]; /// R_Ankle
%     data_record_->joint_position_position[11]=q_[8]; /// torso_to_L_HipRz
%     data_record_->joint_position_position[12]=q_[12]; /// L_HipRz_to_L_HipRx
%     data_record_->joint_position_position[13]=q_[16]; /// L_HipRx_to_L_Thigh
%     data_record_->joint_position_position[14]=q_[20]; /// L_Knee
%     data_record_->joint_position_position[15]=q_[22]; /// L_Ankle

time=Joint_Position_Recording.lcm_timestamp/5;
a=1;
num=5000;
time=time(:,a:num);
f1=figure;
JP.UpperJ_dif=0;
JP.UpperJ_dif_sum=0;
for i=1:6
    JP.UpperJ_dif=JP.UpperJ_dif+abs(JP_AS.Joint_array(i,a:num)-JP_NAS.Joint_array(i,a:num));
    JP.UpperJ_dif_sum=JP.UpperJ_dif_sum+sum(JP.UpperJ_dif);
end
plot(time, JP.UpperJ_dif(:,a:num)/6);


JP.LowerJ_dif=0;
JP.LowerJ_dif_sum=0;
f2=figure;
for i=7:16
    JP.LowerJ_dif=JP.LowerJ_dif+abs(JP_AS.Joint_array(i,a:num)-JP_NAS.Joint_array(i,a:num));
    JP.LowerJ_dif_sum=JP.LowerJ_dif_sum+sum(JP.UpperJ_dif);
end
plot(time, JP.LowerJ_dif(:,a:num)/10);




















f3=figure;
for i=1:6
    subplot(2, 3, i);
    plot(time, abs(JP.Joint_array(i,a:num)-JP_NAS.Joint_array(i,a:num)));
    ylim([0 30])
end
plot(time, JP.LowerJ_dif(:,a:num));


f4=figure;
for i=1:4
    subplot(2, 2, i);
    plot(time, abs(JP.Joint_array(i+6,a:num)-JP_NAS.Joint_array(i+6,a:num)));
    ylim([0 30])
end
f5=figure;
for i=1:4
    subplot(2, 2, i);
    plot(time, abs(JP.Joint_array(i+10,a:num)-JP_NAS.Joint_array(i+10,a:num)));
    ylim([0 30])
end


f6=figure;
for i=1:2
    subplot(1, 2, i);
    plot(time, abs(JP.Joint_array(i+14,a:num)-JP_NAS.Joint_array(i+14,a:num)));
    ylim([0 30])
end


sum_=sum(abs(JP.Joint_array(1,a:num)-JP_NAS.Joint_array(1,a:num)))/5000;
aaa=0;


































plot(time, JP.R_ShoulderRx(:,a:num),'b')
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