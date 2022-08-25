clear;
close all;
%% h=[0.1,0.15,0.2] l=[0.1,0.15,0.2]
% h=0.1, l=0.1;
% h=0.1, l=0.15;
% h=0.1, l=0.2;

%% h=0.1, l=0.1;
% % E_Lower_as=124.4J;
% % E_Upper_as=7.77
% % E_Lower_nas=165.8J;
% % E_Upper_nas=0.09J;
% 
% % agility_as=0.2733 m/s
% % agility_nas=0.2719 m/s
% 
% % stability_time_as=3.661s
% % stability_time_nas=4.308s
% % sum_error_p_as=512 N m s
% % sum_error_p_nas=879 N m s
% % just keeping the stability of posture
% 
% load('h=0.1_l=0.1/energy_nas.mat');
% % load('h=0.1_l=0.1/energy_as.mat');
% E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
% E_RThigh_nas=E_RThigh_nas(:,2:end);
% E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
% E_RKnee_nas=E_RKnee_nas(:,2:end);
% E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
% E_RAnkle_nas=E_RAnkle_nas(:,2:end);
% 
% E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
% E_LThigh_nas=E_LThigh_nas(:,2:end);
% E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
% E_LKnee_nas=E_LKnee_nas(:,2:end);
% E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
% E_LAnkle_nas=E_LAnkle_nas(:,2:end);
% 
% E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
% E_RHipz_nas=E_RHipz_nas(:,2:end);
% E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
% E_RHipx_nas=E_RHipx_nas(:,2:end);
% 
% E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
% E_LHipz_nas=E_LHipz_nas(:,2:end);
% E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
% E_LHipx_nas=E_LHipx_nas(:,2:end);
% 
% E_Lower_nas=E_RThigh_nas(:,end)+E_LThigh_nas(:,end)+E_RKnee_nas(:,end)+...
%                 E_LKnee_nas(:,end)+E_RAnkle_nas(:,end)+E_LAnkle_nas(:,end)+...
%                 E_RHipz_nas(:,end)+E_RHipx_nas(:,end)+...
%                 E_LHipz_nas(:,end)+E_LHipx_nas(:,end);
%             
% E_Upper_nas=Energy_Recording.energy_cost_joint(:,10+1:end);
% E_Upper_nas=sum(E_Upper_nas(end,:));
% 
% load('h=0.1_l=0.1/v_nas.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% Mp_NAS=Velocity_Recording.pitch_moment;
% Mp_NAS=Mp_NAS(:,2:end);
% 
% load('h=0.1_l=0.1/v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% Mp_AS=Velocity_Recording.pitch_moment;
% Mp_AS=Mp_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=5000;
% time=time(:,a:num);
% 
% 
% f1=figure;
% plot(time,vx_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vx_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vx (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f2=figure;
% plot(time,vz_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vz_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vz (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f3=figure;
% plot(time,Mp_NAS(:,a:num));
% xlabel('time (s)');ylabel('moment (N·m·s)');
% hold on;
% plot(time,Mp_AS(:,a:num));
% hold on;
% legend('NAS','AS');
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% agility_as=cal_agility(vx_AS(:,200),vz_AS(:,200));
% agility_nas=cal_agility(vx_NAS(:,200),vz_NAS(:,200));
% 
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=500;
% num=5000;
% time=time(:,a:num);
% sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
% sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));
% 
% sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
% sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));
% 
% sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
% sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));
% 
% a=0;


%% h=0.1, l=0.15;
% % E_Lower_as=133.1J;
% % E_Upper_as=5.8J
% % E_Lower_nas=181J;
% % E_Upper_nas=0.32J;
% 
% % agility_as=0.3809 m/s
% % agility_nas=0.3807 m/s
% 
% % % stability_time_as=3.661s
% % % stability_time_nas=4.308s
% % sum_error_p_as=188 N m s
% % sum_error_p_nas=474 N m s
% % just keeping the stability of posture
% 
% % load('h=0.1_l=0.15/energy_nas.mat');
% load('h=0.1_l=0.15/energy_as.mat');
% E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
% E_RThigh_nas=E_RThigh_nas(:,2:end);
% E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
% E_RKnee_nas=E_RKnee_nas(:,2:end);
% E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
% E_RAnkle_nas=E_RAnkle_nas(:,2:end);
% 
% E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
% E_LThigh_nas=E_LThigh_nas(:,2:end);
% E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
% E_LKnee_nas=E_LKnee_nas(:,2:end);
% E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
% E_LAnkle_nas=E_LAnkle_nas(:,2:end);
% 
% E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
% E_RHipz_nas=E_RHipz_nas(:,2:end);
% E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
% E_RHipx_nas=E_RHipx_nas(:,2:end);
% 
% E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
% E_LHipz_nas=E_LHipz_nas(:,2:end);
% E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
% E_LHipx_nas=E_LHipx_nas(:,2:end);
% 
% E_Lower_nas=E_RThigh_nas(:,end)+E_LThigh_nas(:,end)+E_RKnee_nas(:,end)+...
%                 E_LKnee_nas(:,end)+E_RAnkle_nas(:,end)+E_LAnkle_nas(:,end)+...
%                 E_RHipz_nas(:,end)+E_RHipx_nas(:,end)+...
%                 E_LHipz_nas(:,end)+E_LHipx_nas(:,end);
%             
% E_Upper_nas=Energy_Recording.energy_cost_joint(:,10+1:end);
% E_Upper_nas=sum(E_Upper_nas(end,:));
% 
% load('h=0.1_l=0.15/v_nas.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% Mp_NAS=Velocity_Recording.pitch_moment;
% Mp_NAS=Mp_NAS(:,2:end);
% 
% load('h=0.1_l=0.15/v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% Mp_AS=Velocity_Recording.pitch_moment;
% Mp_AS=Mp_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=5000;
% time=time(:,a:num);
% 
% 
% f1=figure;
% plot(time,vx_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vx_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vx (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f2=figure;
% plot(time,vz_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vz_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vz (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f3=figure;
% plot(time,Mp_NAS(:,a:num));
% xlabel('time (s)');ylabel('moment (N·m·s)');
% hold on;
% plot(time,Mp_AS(:,a:num));
% hold on;
% legend('NAS','AS');
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% agility_as=cal_agility(vx_AS(:,200),vz_AS(:,200));
% agility_nas=cal_agility(vx_NAS(:,200),vz_NAS(:,200));
% 
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=500;
% num=5000;
% time=time(:,a:num);
% sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
% sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));
% 
% sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
% sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));
% 
% sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
% sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));
% 
% a=0;


%% h=0.15, l=0.1;
% E_Lower_as=151J;
% E_Upper_as=13.82
% E_Lower_nas=198.83J;
% E_Upper_nas=0.13J;
% agility_as=0.33m/s
% agility_nas=0.31m/s
% stability_time_as=2.921s
% stability_time_nas=4.533s
% sum_error_p_as=283.05m/s
% sum_error_p_nas=805.41m/s
% sum_error_vx_as=118.40m/s
% sum_error_vx_nas=138.71m/s
% sum_error_vz_as=383.16m/s
% sum_error_vz_nas=392.38m/s

% load('h_0.15_l_0.1_energy_nas.mat');
% load('h_0.15_l_0.1_energy_as.mat');
% E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
% E_RThigh_nas=E_RThigh_nas(:,2:end);
% E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
% E_RKnee_nas=E_RKnee_nas(:,2:end);
% E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
% E_RAnkle_nas=E_RAnkle_nas(:,2:end);
% 
% E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
% E_LThigh_nas=E_LThigh_nas(:,2:end);
% E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
% E_LKnee_nas=E_LKnee_nas(:,2:end);
% E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
% E_LAnkle_nas=E_LAnkle_nas(:,2:end);
% 
% E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
% E_RHipz_nas=E_RHipz_nas(:,2:end);
% E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
% E_RHipx_nas=E_RHipx_nas(:,2:end);
% 
% E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
% E_LHipz_nas=E_LHipz_nas(:,2:end);
% E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
% E_LHipx_nas=E_LHipx_nas(:,2:end);
% 
% E_Lower_nas=E_RThigh_nas(:,end)+E_LThigh_nas(:,end)+E_RKnee_nas(:,end)+...
%                 E_LKnee_nas(:,end)+E_RAnkle_nas(:,end)+E_LAnkle_nas(:,end)+...
%                 E_RHipz_nas(:,end)+E_RHipx_nas(:,end)+...
%                 E_LHipz_nas(:,end)+E_LHipx_nas(:,end);
%             
% E_Upper_nas=Energy_Recording.energy_cost_joint(:,10+1:end);
% E_Upper_nas=sum(E_Upper_nas(end,:));
% load('h_0.15_l_0.1_v_nas.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% Mp_NAS=Velocity_Recording.pitch_moment;
% Mp_NAS=Mp_NAS(:,2:end);
% 
% load('h_0.15_l_0.1_v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% Mp_AS=Velocity_Recording.pitch_moment;
% Mp_AS=Mp_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=5000;
% time=time(:,a:num);
% 
% 
% f1=figure;
% plot(time,vx_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vx_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vx (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f2=figure;
% plot(time,vz_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vz_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vz (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f3=figure;
% plot(time,Mp_NAS(:,a:num));
% xlabel('time (s)');ylabel('moment (N·m·s)');
% hold on;
% plot(time,Mp_AS(:,a:num));
% hold on;
% legend('NAS','AS');
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=550;
% num=5000;
% time=time(:,a:num);
% sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
% sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));
% 
% sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
% sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));
% 
% sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
% sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));



%% h=0.15, l=0.15;
% E_Lower_as=175.3J;
% E_Upper_as=23.1
% E_Lower_nas=272.7J;
% E_Upper_nas=0.49J;

% agility_as=0.36m/s
% agility_nas=0.32m/s

% stability_time_as=2.921s
% stability_time_nas=4.533s
% sum_error_p_as=283.05m/s
% sum_error_p_nas=805.41m/s
% sum_error_vx_as=118.40m/s
% sum_error_vx_nas=138.71m/s
% sum_error_vz_as=383.16m/s
% sum_error_vz_nas=392.38m/s

% load('h_0.15_l_0.1_energy_nas.mat');
% load('h=0.15_l=0.15/energy_as.mat');
% E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
% E_RThigh_nas=E_RThigh_nas(:,2:end);
% E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
% E_RKnee_nas=E_RKnee_nas(:,2:end);
% E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
% E_RAnkle_nas=E_RAnkle_nas(:,2:end);
% 
% E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
% E_LThigh_nas=E_LThigh_nas(:,2:end);
% E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
% E_LKnee_nas=E_LKnee_nas(:,2:end);
% E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
% E_LAnkle_nas=E_LAnkle_nas(:,2:end);
% 
% E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
% E_RHipz_nas=E_RHipz_nas(:,2:end);
% E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
% E_RHipx_nas=E_RHipx_nas(:,2:end);
% 
% E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
% E_LHipz_nas=E_LHipz_nas(:,2:end);
% E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
% E_LHipx_nas=E_LHipx_nas(:,2:end);
% 
% E_Lower_nas=E_RThigh_nas(:,end)+E_LThigh_nas(:,end)+E_RKnee_nas(:,end)+...
%                 E_LKnee_nas(:,end)+E_RAnkle_nas(:,end)+E_LAnkle_nas(:,end)+...
%                 E_RHipz_nas(:,end)+E_RHipx_nas(:,end)+...
%                 E_LHipz_nas(:,end)+E_LHipx_nas(:,end);
%             
% E_Upper_nas=Energy_Recording.energy_cost_joint(:,10+1:end);
% E_Upper_nas=sum(E_Upper_nas(end,:));
% 
% load('h=0.15_l=0.15/v_nas.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% Mp_NAS=Velocity_Recording.pitch_moment;
% Mp_NAS=Mp_NAS(:,2:end);
% 
% load('h=0.15_l=0.15/v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% Mp_AS=Velocity_Recording.pitch_moment;
% Mp_AS=Mp_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=5000;
% time=time(:,a:num);
% 
% 
% f1=figure;
% plot(time,vx_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vx_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vx (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f2=figure;
% plot(time,vz_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vz_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vz (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f3=figure;
% plot(time,Mp_NAS(:,a:num));
% xlabel('time (s)');ylabel('moment (N·m·s)');
% hold on;
% plot(time,Mp_AS(:,a:num));
% hold on;
% legend('NAS','AS');
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% agility_as=cal_agility(vx_AS(:,200),vz_AS(:,200));
% agility_nas=cal_agility(vx_NAS(:,200),vz_NAS(:,200));
% 
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=550;
% num=5000;
% time=time(:,a:num);
% sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
% sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));
% 
% sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
% sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));
% 
% sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
% sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));



%% h=0.15, l=0.2;
% E_Lower_as=171.16J;
% E_Upper_as=23.1
% E_Lower_nas=272.8J;
% E_Upper_nas=1.46J;

% agility_as=0.447 m/s
% agility_nas=0.43 m/s

% stability_time_as=2.921s
% stability_time_nas=4.533s
% sum_error_p_as=217.7m/s
% sum_error_p_nas=277.2m/s
% just keeping the stability of posture

% load('h=0.15_l=0.2/energy_nas.mat');
% load('h=0.15_l=0.2/energy_as.mat');
% E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
% E_RThigh_nas=E_RThigh_nas(:,2:end);
% E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
% E_RKnee_nas=E_RKnee_nas(:,2:end);
% E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
% E_RAnkle_nas=E_RAnkle_nas(:,2:end);
% 
% E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
% E_LThigh_nas=E_LThigh_nas(:,2:end);
% E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
% E_LKnee_nas=E_LKnee_nas(:,2:end);
% E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
% E_LAnkle_nas=E_LAnkle_nas(:,2:end);
% 
% E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
% E_RHipz_nas=E_RHipz_nas(:,2:end);
% E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
% E_RHipx_nas=E_RHipx_nas(:,2:end);
% 
% E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
% E_LHipz_nas=E_LHipz_nas(:,2:end);
% E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
% E_LHipx_nas=E_LHipx_nas(:,2:end);
% 
% E_Lower_nas=E_RThigh_nas(:,end)+E_LThigh_nas(:,end)+E_RKnee_nas(:,end)+...
%                 E_LKnee_nas(:,end)+E_RAnkle_nas(:,end)+E_LAnkle_nas(:,end)+...
%                 E_RHipz_nas(:,end)+E_RHipx_nas(:,end)+...
%                 E_LHipz_nas(:,end)+E_LHipx_nas(:,end);
%             
% E_Upper_nas=Energy_Recording.energy_cost_joint(:,10+1:end);
% E_Upper_nas=sum(E_Upper_nas(end,:));
% 
% load('h=0.15_l=0.2/v_nas.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% Mp_NAS=Velocity_Recording.pitch_moment;
% Mp_NAS=Mp_NAS(:,2:end);
% 
% load('h=0.15_l=0.2/v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% Mp_AS=Velocity_Recording.pitch_moment;
% Mp_AS=Mp_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=5000;
% time=time(:,a:num);
% 
% 
% f1=figure;
% plot(time,vx_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vx_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vx (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f2=figure;
% plot(time,vz_NAS(:,a:num),'LineWidth',1.2);
% hold on;
% plot(time,vz_AS(:,a:num),'LineWidth',1.2);
% xlabel('time (s)');ylabel('vz (m/s)');
% legend('NAS','AS','Location', 'northwest');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% 
% f3=figure;
% plot(time,Mp_NAS(:,a:num));
% xlabel('time (s)');ylabel('moment (N·m·s)');
% hold on;
% plot(time,Mp_AS(:,a:num));
% hold on;
% legend('NAS','AS');
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% agility_as=cal_agility(vx_AS(:,200),vz_AS(:,200));
% agility_nas=cal_agility(vx_NAS(:,200),vz_NAS(:,200));
% 
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=550;
% num=5000;
% time=time(:,a:num);
% sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
% sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));
% 
% sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
% sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));
% 
% sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
% sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));
% 
% a=0;agility_nas=cal_agility(vx_NAS(:,200),vz_NAS(:,200));
% 
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=550;
% num=5000;
% time=time(:,a:num);
% sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
% sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));
% 
% sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
% sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));
% 
% sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
% sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));
% 
% a=0;





%% h=0.2, l=0.1;
% E_Lower_as=186.3J;
% E_Upper_as=12.7J
% E_Lower_nas=188;
% E_Upper_nas=0.23J;

% agility_as=0.3966 m/s
% agility_nas=0.395 m/s

% % stability_time_as=3.661s
% % stability_time_nas=4.308s
% sum_error_p_as=182 N m s
% sum_error_p_nas=242 N m s
% just keeping the stability of posture

load('h=0.2_l=0.1/energy_nas.mat');
% load('h=0.2_l=0.1/energy_as.mat');
E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
E_RThigh_nas=E_RThigh_nas(:,2:end);
E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
E_RKnee_nas=E_RKnee_nas(:,2:end);
E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
E_RAnkle_nas=E_RAnkle_nas(:,2:end);

E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
E_LThigh_nas=E_LThigh_nas(:,2:end);
E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
E_LKnee_nas=E_LKnee_nas(:,2:end);
E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
E_LAnkle_nas=E_LAnkle_nas(:,2:end);

E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
E_RHipz_nas=E_RHipz_nas(:,2:end);
E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
E_RHipx_nas=E_RHipx_nas(:,2:end);

E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
E_LHipz_nas=E_LHipz_nas(:,2:end);
E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
E_LHipx_nas=E_LHipx_nas(:,2:end);

E_Lower_nas=E_RThigh_nas(:,end)+E_LThigh_nas(:,end)+E_RKnee_nas(:,end)+...
                E_LKnee_nas(:,end)+E_RAnkle_nas(:,end)+E_LAnkle_nas(:,end)+...
                E_RHipz_nas(:,end)+E_RHipx_nas(:,end)+...
                E_LHipz_nas(:,end)+E_LHipx_nas(:,end);
            
E_Upper_nas=Energy_Recording.energy_cost_joint(:,10+1:end);
E_Upper_nas=sum(E_Upper_nas(end,:));

load('h=0.2_l=0.1/v_nas.mat');
vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS=vx_NAS(:,2:end);
vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS=vz_NAS(:,2:end);
Mp_NAS=Velocity_Recording.pitch_moment;
Mp_NAS=Mp_NAS(:,2:end);

load('h=0.2_l=0.1/v_as.mat');
vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS=vx_AS(:,2:end);
vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS=vz_AS(:,2:end);
Mp_AS=Velocity_Recording.pitch_moment;
Mp_AS=Mp_AS(:,2:end);

time=Velocity_Recording.lcm_timestamp/5;
a=1;
num=5000;
time=time(:,a:num);


f1=figure;
plot(time,vx_NAS(:,a:num),'LineWidth',1.2);
hold on;
plot(time,vx_AS(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vx (m/s)');
legend('NAS','AS','Location', 'northwest');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');


f2=figure;
plot(time,vz_NAS(:,a:num),'LineWidth',1.2);
hold on;
plot(time,vz_AS(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vz (m/s)');
legend('NAS','AS','Location', 'northwest');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');


f3=figure;
plot(time,Mp_NAS(:,a:num));
xlabel('time (s)');ylabel('moment (N·m·s)');
hold on;
plot(time,Mp_AS(:,a:num));
hold on;
legend('NAS','AS');
set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
agility_as=cal_agility(vx_AS(:,200),vz_AS(:,200));
agility_nas=cal_agility(vx_NAS(:,200),vz_NAS(:,200));


time=Velocity_Recording.lcm_timestamp/5;
a=500;
num=5000;
time=time(:,a:num);
sum_error_p_as=sum(abs(Mp_AS(:,a:num)));
sum_error_p_nas=sum(abs(Mp_NAS(:,a:num)));

sum_error_vx_as=sum(abs(vx_AS(:,a:num)));
sum_error_vx_nas=sum(abs(vx_NAS(:,a:num)));

sum_error_vz_as=sum(abs(vz_AS(:,a:num)));
sum_error_vz_nas=sum(abs(vz_NAS(:,a:num)));

a=0;



















%%
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





E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
E_RThigh_nas=E_RThigh_nas(:,2:end);
E_RKnee_nas=Energy_Recording.energy_cost_joint(:,3+1)';
E_RKnee_nas=E_RKnee_nas(:,2:end);
E_RAnkle_nas=Energy_Recording.energy_cost_joint(:,4+1)';
E_RAnkle_nas=E_RAnkle_nas(:,2:end);

E_LThigh_nas=Energy_Recording.energy_cost_joint(:,7+1)';
E_LThigh_nas=E_LThigh_nas(:,2:end);
E_LKnee_nas=Energy_Recording.energy_cost_joint(:,8+1)';
E_LKnee_nas=E_LKnee_nas(:,2:end);
E_LAnkle_nas=Energy_Recording.energy_cost_joint(:,9+1)';
E_LAnkle_nas=E_LAnkle_nas(:,2:end);

E_RHipz_nas=Energy_Recording.energy_cost_joint(:,0+1)';
E_RHipz_nas=E_RHipz_nas(:,2:end);
E_RHipx_nas=Energy_Recording.energy_cost_joint(:,1+1)';
E_RHipx_nas=E_RHipx_nas(:,2:end);

E_LHipz_nas=Energy_Recording.energy_cost_joint(:,5+1)';
E_LHipz_nas=E_LHipz_nas(:,2:end);
E_LHipx_nas=Energy_Recording.energy_cost_joint(:,6+1)';
E_LHipx_nas=E_LHipx_nas(:,2:end);




bb=1;


% h=0.15, l=0.1;
% h=0.15, l=0.15;
% h=0.15, l=0.2;

% h=0.2, l=0.1;
% h=0.2, l=0.15;
% h=0.2, l=0.2;
%%
% % robot with arm no swing 
% load('robot_with_arm/WBC/h=0.15_l=0.1/no_swing/velocity.mat');
% %%% actual velocity
% z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
% x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);
% %%% desire velocity
% z_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,3)';
% z_velocity_des_witharm_noswing=z_velocity_des_witharm_noswing(:,2:end);
% x_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,1)';
% x_velocity_des_witharm_noswing=x_velocity_des_witharm_noswing(:,2:end);
% 
% 
% load('robot_with_arm/WBC/h=0.15_l=0.1/no_swing/position.mat');
% %%% actual position
% z_position_act_witharm_noswing=Position_Recording.actual_com(:,3)';
% z_position_act_witharm_noswing=z_position_act_witharm_noswing(:,2:end);
% x_position_act_witharm_noswing=Position_Recording.actual_com(:,1)';
% x_position_act_witharm_noswing=x_position_act_witharm_noswing(:,2:end);
% %%% desire position
% z_position_des_witharm_noswing=Position_Recording.des_com(:,3)';
% z_position_des_witharm_noswing=z_position_des_witharm_noswing(:,2:end);
% x_position_des_witharm_noswing=Position_Recording.des_com(:,1)';
% x_position_des_witharm_noswing=x_position_des_witharm_noswing(:,2:end);
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % robot with arm 
% load('robot_with_arm/WBC/h=0.15_l=0.1/velocity.mat');
% %%% actual velocity
% z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
% x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
% %%% desire velocity
% z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
% z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
% x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
% x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);
% 
% load('robot_with_arm/WBC/h=0.15_l=0.1/position.mat');
% %%% actual position
% z_position_act_witharm=Position_Recording.actual_com(:,3)';
% z_position_act_witharm=z_position_act_witharm(:,2:end);
% x_position_act_witharm=Position_Recording.actual_com(:,1)';
% x_position_act_witharm=x_position_act_witharm(:,2:end);
% %%% desire position
% z_position_des_witharm=Position_Recording.des_com(:,3)';
% z_position_des_witharm=z_position_des_witharm(:,2:end);
% x_position_des_witharm=Position_Recording.des_com(:,1)';
% x_position_des_witharm=x_position_des_witharm(:,2:end);
% 
% 
% % Joint postion
% % torso_to_R_ShoulderRx
% % torso_to_L_ShoulderRx
% % R_ShoulderRx_to_R_UpperArm
% % L_ShoulderRx_to_L_UpperArm
% % R_UpperArm_to_R_ForeArm
% % L_UpperArm_to_L_ForeArm
% load('robot_with_arm/WBC/h=0.15_l=0.1/joint_position.mat');
% R_ShoulderRx=Joint_Position_Recording.joint_p(:,1)';
% R_ShoulderRx=R_ShoulderRx(:,2:end);
% L_ShoulderRx=Joint_Position_Recording.joint_p(:,2)';
% L_ShoulderRx=L_ShoulderRx(:,2:end);
% 
% R_UpperArm=Joint_Position_Recording.joint_p(:,3)';
% R_UpperArm=R_UpperArm(:,2:end);
% L_UpperArm=Joint_Position_Recording.joint_p(:,4)';
% L_UpperArm=L_UpperArm(:,2:end);
% 
% R_ForeArm=Joint_Position_Recording.joint_p(:,5)';
% R_ForeArm=R_ForeArm(:,2:end);
% L_ForeArm=Joint_Position_Recording.joint_p(:,6)';
% L_ForeArm=L_ForeArm(:,2:end);


%% velocity h=0.5 l=0.2 I=0.113552 --end_time=5 --target_realtime_rate=1
% robot with arm no swing 
load('Agility_analysis/h_0_5_l_0_2_ns_I_0.113552.mat');
%%% actual velocity
z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);
%%% desire velocity
z_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm_noswing=z_velocity_des_witharm_noswing(:,2:end);
x_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm_noswing=x_velocity_des_witharm_noswing(:,2:end);


% robot with arm swing
load('Agility_analysis/h_0_5_l_0_2_s_I_0.113552.mat');
%%% actual velocity
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
%%% desire velocity
z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);

%% velocity h=0.5 l=0.2 I=10 --end_time=5 --target_realtime_rate=1
% robot with arm no swing 
load('Agility_analysis/h_0_5_l_0_2_ns_I_10.mat');
%%% actual velocity
z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);
%%% desire velocity
z_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm_noswing=z_velocity_des_witharm_noswing(:,2:end);
x_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm_noswing=x_velocity_des_witharm_noswing(:,2:end);


% robot with arm swing
load('Agility_analysis/h_0_5_l_0_2_s_I_10.mat');
%%% actual velocity
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
%%% desire velocity
z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);



%% velocity h=0.5 l=0.2 --end_time=5 --target_realtime_rate=1
% robot with arm no swing 
load('Agility_analysis/h_0_5_l_0_2_ns.mat');
%%% actual velocity
z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);
%%% desire velocity
z_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm_noswing=z_velocity_des_witharm_noswing(:,2:end);
x_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm_noswing=x_velocity_des_witharm_noswing(:,2:end);


% robot with arm swing
load('Agility_analysis/h_0_5_l_0_2_s.mat');
%%% actual velocity
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
%%% desire velocity
z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);


%% velocity h=0.15 l=0.2 --end_time=5 --target_realtime_rate=1
% robot with arm no swing 
load('Agility_analysis/h_0_15_l_0_1_ns.mat');
%%% actual velocity
z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);
%%% desire velocity
z_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm_noswing=z_velocity_des_witharm_noswing(:,2:end);
x_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm_noswing=x_velocity_des_witharm_noswing(:,2:end);


% robot with arm swing
load('Agility_analysis/h_0_15_l_0_1_s.mat');
%%% actual velocity
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
%%% desire velocity
z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);


%% Stability velocity h=0.15 l=0.1 --end_time=5 --target_realtime_rate=1
% robot with arm no swing 
load('Stability/h_0_15_l_0_1_ns.mat');
%%% actual velocity
z_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm_noswing=z_velocity_act_witharm_noswing(:,2:end);
x_velocity_act_witharm_noswing=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm_noswing=x_velocity_act_witharm_noswing(:,2:end);
%%% desire velocity
z_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm_noswing=z_velocity_des_witharm_noswing(:,2:end);
x_velocity_des_witharm_noswing=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm_noswing=x_velocity_des_witharm_noswing(:,2:end);
%%% actual pitch moment
pitch_moment_witharm_noswing=Velocity_Recording.pitch_moment;
pitch_moment_witharm_noswing=pitch_moment_witharm_noswing(:,2:end);

% robot with arm swing
load('Stability/h_0_15_l_0_1_s.mat');
%%% actual velocity
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
%%% desire velocity
z_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,3)';
z_velocity_des_witharm=z_velocity_des_witharm(:,2:end);
x_velocity_des_witharm=Velocity_Recording.des_com_velocity(:,1)';
x_velocity_des_witharm=x_velocity_des_witharm(:,2:end);
%%% actual pitch moment
pitch_moment_witharm=Velocity_Recording.pitch_moment;
pitch_moment_witharm=pitch_moment_witharm(:,2:end);
%% Joint postion h=0.15 l=0.1 
% torso_to_R_ShoulderRx
% torso_to_L_ShoulderRx
% R_ShoulderRx_to_R_UpperArm
% L_ShoulderRx_to_L_UpperArm
% R_UpperArm_to_R_ForeArm
% L_UpperArm_to_L_ForeArm
load('robot_with_arm/WBC/h=0.15_l=0.1/joint_position.mat');
R_ShoulderRx=Joint_Position_Recording.joint_p(:,1)';
R_ShoulderRx=R_ShoulderRx(:,2:end);
L_ShoulderRx=Joint_Position_Recording.joint_p(:,2)';
L_ShoulderRx=L_ShoulderRx(:,2:end);

R_UpperArm=Joint_Position_Recording.joint_p(:,3)';
R_UpperArm=R_UpperArm(:,2:end);
L_UpperArm=Joint_Position_Recording.joint_p(:,4)';
L_UpperArm=L_UpperArm(:,2:end);

R_ForeArm=Joint_Position_Recording.joint_p(:,5)';
R_ForeArm=R_ForeArm(:,2:end);
L_ForeArm=Joint_Position_Recording.joint_p(:,6)';
L_ForeArm=L_ForeArm(:,2:end);

%% Joint postion h=0.5 l=0.2 
% torso_to_R_ShoulderRx
% torso_to_L_ShoulderRx
% R_ShoulderRx_to_R_UpperArm
% L_ShoulderRx_to_L_UpperArm
% R_UpperArm_to_R_ForeArm
% L_UpperArm_to_L_ForeArm
load('Agility_analysis/h_0_5_l_0_2_s_I_10_joint.mat');
R_ShoulderRx=Joint_Position_Recording.joint_p(:,1)';
R_ShoulderRx=R_ShoulderRx(:,2:end);
L_ShoulderRx=Joint_Position_Recording.joint_p(:,2)';
L_ShoulderRx=L_ShoulderRx(:,2:end);

R_UpperArm=Joint_Position_Recording.joint_p(:,3)';
R_UpperArm=R_UpperArm(:,2:end);
L_UpperArm=Joint_Position_Recording.joint_p(:,4)';
L_UpperArm=L_UpperArm(:,2:end);

R_ForeArm=Joint_Position_Recording.joint_p(:,5)';
R_ForeArm=R_ForeArm(:,2:end);
L_ForeArm=Joint_Position_Recording.joint_p(:,6)';
L_ForeArm=L_ForeArm(:,2:end);

load('Agility_analysis/h_0_5_l_0_2_s_joint.mat');
R_ShoulderRx=Joint_Position_Recording.joint_p(:,1)';
R_ShoulderRx=R_ShoulderRx(:,2:end);
L_ShoulderRx=Joint_Position_Recording.joint_p(:,2)';
L_ShoulderRx=L_ShoulderRx(:,2:end);

R_UpperArm=Joint_Position_Recording.joint_p(:,3)';
R_UpperArm=R_UpperArm(:,2:end);
L_UpperArm=Joint_Position_Recording.joint_p(:,4)';
L_UpperArm=L_UpperArm(:,2:end);

R_ForeArm=Joint_Position_Recording.joint_p(:,5)';
R_ForeArm=R_ForeArm(:,2:end);
L_ForeArm=Joint_Position_Recording.joint_p(:,6)';
L_ForeArm=L_ForeArm(:,2:end);


%% Joint postion h=0.15 l=0.1 
% torso_to_R_ShoulderRx
% torso_to_L_ShoulderRx
% R_ShoulderRx_to_R_UpperArm
% L_ShoulderRx_to_L_UpperArm
% R_UpperArm_to_R_ForeArm
% L_UpperArm_to_L_ForeArm
load('Stability/h_0_15_l_0_1_s_joint.mat');
% load('Agility_analysis/h_0_15_l_0_1_s_joint.mat');

R_ShoulderRx=Joint_Position_Recording.joint_p(:,1)';
R_ShoulderRx=R_ShoulderRx(:,2:end);
L_ShoulderRx=Joint_Position_Recording.joint_p(:,2)';
L_ShoulderRx=L_ShoulderRx(:,2:end);

R_UpperArm=Joint_Position_Recording.joint_p(:,3)';
R_UpperArm=R_UpperArm(:,2:end);
L_UpperArm=Joint_Position_Recording.joint_p(:,4)';
L_UpperArm=L_UpperArm(:,2:end);

R_ForeArm=Joint_Position_Recording.joint_p(:,5)';
R_ForeArm=R_ForeArm(:,2:end);
L_ForeArm=Joint_Position_Recording.joint_p(:,6)';
L_ForeArm=L_ForeArm(:,2:end);



%% energy h=0.15 l=0.1 --end_time=0.2 --target_realtime_rate=0.2
% robot with arm swing 
load('Agility_analysis/h_0_15_l_0_1_s_energy.mat');

E_RThigh_nas=Energy_Recording.energy_cost_joint(:,2+1)';
E_RThigh_nas=E_RThigh_nas(:,2:end);
E_RKnee_nas=Energy_Recording.power_joint(:,3+1)';
E_RKnee_nas=E_RKnee_nas(:,2:end);
E_RAnkle_nas=Energy_Recording.power_joint(:,4+1)';
E_RAnkle_nas=E_RAnkle_nas(:,2:end);

E_LThigh_s=Energy_Recording.power_joint(:,7+1)';
E_LThigh_s=E_LThigh_s(:,2:end);
E_LKnee_s=Energy_Recording.power_joint(:,8+1)';
E_LKnee_s=E_LKnee_s(:,2:end);
E_LAnkle_s=Energy_Recording.power_joint(:,9+1)';
E_LAnkle_s=E_LAnkle_s(:,2:end);

E_RHipz_s=Energy_Recording.power_joint(:,0+1)';
E_RHipz_s=E_RHipz_s(:,2:end);
E_RHipx_s=Energy_Recording.power_joint(:,1+1)';
E_RHipx_s=E_RHipx_s(:,2:end);

E_LHipz_s=Energy_Recording.power_joint(:,5+1)';
E_LHipz_s=E_LHipz_s(:,2:end);
E_LHipx_s=Energy_Recording.power_joint(:,6+1)';
E_LHipx_s=E_LHipx_s(:,2:end);

E_Lower_s=E_RThigh_s+E_LThigh_s+E_RKnee_s+...
                E_LKnee_s+E_RAnkle_s+E_LAnkle_s+...
                E_RHipz_s+E_RHipx_s+...
                E_LHipz_s+E_LHipx_s;

%% energy h=0.15 l=0.1 --end_time=0.2 --target_realtime_rate=0.2
% robot with arm no swing 
load('Agility_analysis/h_0_15_l_0_1_ns_energy.mat');
P_RThigh_ns=Energy_Recording.power_joint(:,2+1)';
P_RThigh_ns=P_RThigh_ns(:,2:end);
P_RKnee_ns=Energy_Recording.power_joint(:,3+1)';
P_RKnee_ns=P_RKnee_ns(:,2:end);
P_RAnkle_ns=Energy_Recording.power_joint(:,4+1)';
P_RAnkle_ns=P_RAnkle_ns(:,2:end);

P_LThigh_ns=Energy_Recording.power_joint(:,7+1)';
P_LThigh_ns=P_LThigh_ns(:,2:end);
P_LKnee_ns=Energy_Recording.power_joint(:,8+1)';
P_LKnee_ns=P_LKnee_ns(:,2:end);
P_LAnkle_ns=Energy_Recording.power_joint(:,9+1)';
P_LAnkle_ns=P_LAnkle_ns(:,2:end);

P_RHipz_ns=Energy_Recording.power_joint(:,0+1)';
P_RHipz_ns=P_RHipz_ns(:,2:end);
P_RHipx_ns=Energy_Recording.power_joint(:,1+1)';
P_RHipx_ns=P_RHipx_ns(:,2:end);

P_LHipz_ns=Energy_Recording.power_joint(:,5+1)';
P_LHipz_ns=P_LHipz_ns(:,2:end);
P_LHipx_ns=Energy_Recording.power_joint(:,6+1)';
P_LHipx_ns=P_LHipx_ns(:,2:end);

P_Lower_ns=P_RThigh_ns+P_LThigh_ns+P_RKnee_ns+...
                P_LKnee_ns+P_RAnkle_ns+P_LAnkle_ns+...
                P_RHipz_ns+P_RHipx_ns+...
                P_LHipz_ns+P_LHipx_ns;
            
% time=Energy_Recording.lcm_timestamp/5;
% f_=figure;
% plot(time,P_Lower_ns);
% hold on;
% plot(time,P_Lower_s);
% xlabel('time (s)');ylabel('P (W)');
% legend('AS','NAS');
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');

%% plot
time=Velocity_Recording.lcm_timestamp/5;
a=500;
num=5000;
time=time(:,a:num);





f0=figure;
plot(time,pitch_moment_witharm(:,a:num));
xlabel('time (s)');ylabel('moment (N·m·s)');
hold on;
plot(time,pitch_moment_witharm_noswing(:,a:num));
hold on;
legend('AS','NAS');
set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
sum_error_p_s=sum(abs(pitch_moment_witharm(:,a:num)));
sum_error_p_ns=sum(abs(pitch_moment_witharm_noswing(:,a:num)));

f1=figure;

plot(time,z_velocity_act_witharm(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vz (m/s)');
% xlabel('x','Fontname', 'Times New Roman','FontSize',12);
hold on;
plot(time,z_velocity_act_witharm_noswing(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vz (m/s)');
hold on;
legend('AS','NAS','Location','northwest');
set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');

sum_error_z_s=sum(abs(z_velocity_act_witharm(:,a:num)));
sum_error_z_ns=sum(abs(z_velocity_act_witharm_noswing(:,a:num)));

% f2=figure;
% plot(time,z_velocity_des_witharm(:,a:num),'-');
% xlabel('time (s)');ylabel('vz (m/s)');
% hold on;
% plot(time,z_velocity_des_witharm_noswing(:,a:num),'-');
% xlabel('time (s)');ylabel('vz (m/s)');
% hold on;
% legend('des\_vz_s','des\_vz_ns', 'Location', 'northwest');
% title("des\_vz");
% set(gca, 'linewidth',1, 'fontsize',15);
% 
f3=figure;
plot(time,x_velocity_act_witharm(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vx (m/s)');
hold on;
plot(time,x_velocity_act_witharm_noswing(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vx (m/s)');
hold on;
legend('AS','NAS','Location', 'northwest');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
sum_error_x=sum(abs(x_velocity_act_witharm(:,a:num)));
sum_error_x_ns=sum(abs(x_velocity_act_witharm_noswing(:,a:num)));

% 
% f4=figure;
% plot(time,x_velocity_des_witharm(:,a:num),'-');
% xlabel('time (s)');ylabel('vx (m/s)');
% hold on;
% plot(time,x_velocity_des_witharm_noswing(:,a:num),'-');
% xlabel('time (s)');ylabel('vx (m/s)');
% hold on;
% legend('des\_vx_s','des\_vx_ns', 'Location', 'northwest');
% title("des\_vx");
% set(gca, 'linewidth',1, 'fontsize',15, 'Fontname', 'Times New Roman');
% 


f5=figure;
subplot(2,1,1);
plot(time,R_UpperArm(:,a:num)*180/pi);
xlabel('time (s)');ylabel('angle (deg)');
legend('UpperArm\_joint');
set(gca, 'linewidth',1, 'fontsize',15,'FontWeight','bold');
hold on;

subplot(2,1,2);
plot(time,R_ForeArm(:,a:num)*180/pi);
% ylim([-40,0]);
xlabel('time (s)');ylabel('angle (deg)');
legend('ForeArm\_joint');
% title("arm\_joint");
set(gca, 'linewidth',1, 'fontsize',15,'FontWeight','bold');

% f6=figure;
% R_UpperArm_dot=diff(R_UpperArm)./diff(time);
% R_ForeArm_dot=diff(R_ForeArm)./diff(time);
% subplot(2,1,1);
% plot(time(:,a:num-1),R_UpperArm_dot(:,a:num-1)*180/pi);
% xlabel('time (s)');ylabel('Angular velocity (deg)');
% legend('UpperArm\_joint');
% set(gca, 'linewidth',1, 'fontsize',15);
% hold on;
% 
% subplot(2,1,2);
% plot(time(:,a:num-1),R_ForeArm_dot(:,a:num-1)*180/pi);
% xlabel('time (s)');ylabel('Angular velocity (deg)');
% legend('ForeArm\_joint');
% % title("arm\_joint");
% set(gca, 'linewidth',1, 'fontsize',15);

f__=figure;
X = categorical({'Total','Upper','Lower'});
X = reordercats(X,{'Total','Upper','Lower'});
Y = [166.5 204.4;13.5 1;153 203.4];
b = bar(X,Y,1);
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints; 
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom','FontSize',11)

xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints; 
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom','FontSize',11)

legend('AS','NAS');
ylabel("Energy  (J)")
set(gca,'FontSize',15)
a=0;







%% plot
% time=Velocity_Recording.lcm_timestamp;
% a=1;
% num=4000;
% time=time(:,a:num);
% f1=figure;
% subplot(4,1,1)
% plot(time,R_ShoulderRx(:,a:num),'-.');
% hold on;
% plot(time,L_ShoulderRx(:,a:num),'--');
% legend('R ShoulderRx','L ShoulderRx');
% title("Shoulder")
% 
% subplot(4,1,2)
% plot(time,R_UpperArm(:,a:num),'-.');
% hold on;
% plot(time,L_UpperArm(:,a:num),'--');
% hold on;
% plot(time,z_velocity_act_witharm(:,a:num));
% hold on;
% plot(time,z_velocity_des_witharm(:,a:num));
% legend('R UpperArm','L UpperArm','z velocity','z des velocity');
% title("UpperArm swing")
% 
% subplot(4,1,3)
% plot(time,R_UpperArm(:,a:num),'-.');
% hold on;
% plot(time,L_UpperArm(:,a:num),'--');
% hold on;
% plot(time,z_velocity_act_witharm_noswing(:,a:num));
% hold on;
% plot(time,z_velocity_des_witharm(:,a:num));
% legend('R UpperArm','L UpperArm','z velocity','z des velocity');
% title("UpperArm no swing")
% 
% subplot(4,1,4)
% plot(time,R_ForeArm(:,a:num),'-.');
% hold on;
% plot(time,L_ForeArm(:,a:num),'--');
% legend('R ForeArm','L ForeArm');
% title("ForeArm")




