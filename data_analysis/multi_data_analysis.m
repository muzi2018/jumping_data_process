close all; clear;clc;
%% Agility v
% load('h=0.1_l=0.1/v_nas.mat');
% vx_NAS_1=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS_1=vx_NAS_1(:,2:end);
% vz_NAS_1=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS_1=vz_NAS_1(:,2:end);
% Mp_NAS_1=Velocity_Recording.pitch_moment;
% Mp_NAS_1=Mp_NAS_1(:,2:end);
% load('h=0.1_l=0.1/v_as.mat');
% vx_AS_1=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS_1=vx_AS_1(:,2:end);
% vz_AS_1=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS_1=vz_AS_1(:,2:end);
% Mp_AS_1=Velocity_Recording.pitch_moment;
% Mp_AS_1=Mp_AS_1(:,2:end);
% 
% load('h=0.1_l=0.15/v_nas.mat');
% vx_NAS_2=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS_2=vx_NAS_2(:,2:end);
% vz_NAS_2=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS_2=vz_NAS_2(:,2:end);
% Mp_NAS_2=Velocity_Recording.pitch_moment;
% Mp_NAS_2=Mp_NAS_2(:,2:end);
% load('h=0.1_l=0.15/v_as.mat');
% vx_AS_2=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS_2=vx_AS_2(:,2:end);
% vz_AS_2=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS_2=vz_AS_2(:,2:end);
% Mp_AS_2=Velocity_Recording.pitch_moment;
% Mp_AS_2=Mp_AS_2(:,2:end);
% 
% load('h=0.15_l=0.1/v_nas.mat');
% vx_NAS_3=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS_3=vx_NAS_3(:,2:end);
% vz_NAS_3=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS_3=vz_NAS_3(:,2:end);
% Mp_NAS_3=Velocity_Recording.pitch_moment;
% Mp_NAS_3=Mp_NAS_3(:,2:end);
% load('h=0.15_l=0.1/v_as.mat');
% vx_AS_3=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS_3=vx_AS_3(:,2:end);
% vz_AS_3=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS_3=vz_AS_3(:,2:end);
% Mp_AS_3=Velocity_Recording.pitch_moment;
% Mp_AS_3=Mp_AS_3(:,2:end);
% 
% load('h=0.15_l=0.15/v_nas.mat');
% vx_NAS_4=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS_4=vx_NAS_4(:,2:end);
% vz_NAS_4=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS_4=vz_NAS_4(:,2:end);
% Mp_NAS_4=Velocity_Recording.pitch_moment;
% Mp_NAS_4=Mp_NAS_4(:,2:end);
% load('h=0.15_l=0.15/v_as.mat');
% vx_AS_4=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS_4=vx_AS_4(:,2:end);
% vz_AS_4=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS_4=vz_AS_4(:,2:end);
% Mp_AS_4=Velocity_Recording.pitch_moment;
% Mp_AS_4=Mp_AS_4(:,2:end);
% % time=Velocity_Recording.lcm_timestamp/5;
% % a=1;
% % num=200;
% % time=time(:,a:num);
% % f=figure;
% % plot(time,vx_NAS_4(:,a:num),'vb--','MarkerIndices',1:2:length(time))
% % hold on;
% % plot(time,vx_AS_4(:,a:num),'vr--','MarkerIndices',1:2:length(time))
% % hold on;
% 
% load('h=0.2_l=0.1/v_nas.mat');
% vx_NAS_5=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS_5=vx_NAS_5(:,2:end);
% vz_NAS_5=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS_5=vz_NAS_5(:,2:end);
% Mp_NAS_5=Velocity_Recording.pitch_moment;
% Mp_NAS_5=Mp_NAS_5(:,2:end);
% load('h=0.2_l=0.1/v_as.mat');
% vx_AS_5=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS_5=vx_AS_5(:,2:end);
% vz_AS_5=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS_5=vz_AS_5(:,2:end);
% Mp_AS_5=Velocity_Recording.pitch_moment;
% Mp_AS_5=Mp_AS_5(:,2:end);
% 
% load('h=0.2_l=0.15/v_nas.mat');
% vx_NAS_6=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS_6=vx_NAS_6(:,2:end);
% vz_NAS_6=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS_6=vz_NAS_6(:,2:end);
% Mp_NAS_6=Velocity_Recording.pitch_moment;
% Mp_NAS_6=Mp_NAS_6(:,2:end);
% load('h=0.2_l=0.15/v_as.mat');
% vx_AS_6=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS_6=vx_AS_6(:,2:end);
% vz_AS_6=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS_6=vz_AS_6(:,2:end);
% Mp_AS_6=Velocity_Recording.pitch_moment;
% Mp_AS_6=Mp_AS_6(:,2:end);
% 
% 
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=185;
% num=200;
% time=time(:,a:num);
% 
% f1=figure;
% 
% % plot(time,vx_NAS_1(:,a:num))
% % hold on;
% % plot(time,vx_AS_1(:,a:num))
% % hold on;
% % 
% % plot(time,vx_NAS_2(:,a:num))
% % hold on;
% % plot(time,vx_AS_2(:,a:num))
% % hold on;
% % 
% % plot(time,vx_NAS_3(:,a:num))
% % hold on;
% % plot(time,vx_AS_3(:,a:num))
% % hold on;
% % 
% % plot(time,vx_NAS_4(:,a:num))
% % hold on;
% % plot(time,vx_AS_4(:,a:num))
% % hold on;
% % 
% % plot(time,vx_NAS_5(:,a:num))
% % hold on;
% % plot(time,vx_AS_5(:,a:num))
% % hold on;
% % 
% % plot(time,vx_NAS_6(:,a:num))
% % hold on;
% % plot(time,vx_AS_6(:,a:num))
% % hold on;
% % xlim([0.181 0.202]);
% % xlabel('time (s)');ylabel('vx (m/s)');
% % set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% % legend('h=0.1\_l=0.1\_NAS','h=0.1\_l=0.1\_AS',...
% %         'h=0.1\_l=0.15\_NAS','h=0.1\_l=0.15\_AS',...
% %         'h=0.15\_l=0.1\_NAS','h=0.15\_l=0.1\_AS',...
% %         'h=0.15\_l=0.15\_NAS','h=0.15\_l=0.15\_AS',...
% %         'h=0.2\_l=0.1\_NAS','h=0.2\_l=0.1\_AS',...
% %         'h=0.2\_l=0.15\_NAS','h=0.2\_l=0.15\_AS',...
% %         'Location', 'northwest');
% 
% subplot(3,1,1);
% plot(time,vx_NAS_1(:,a:num),'sb--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_1(:,a:num),'sr--','MarkerIndices',1:2:length(time))
% hold on;
% 
% plot(time,vx_NAS_2(:,a:num),'db--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_2(:,a:num),'dr--','MarkerIndices',1:2:length(time))
% hold on;
% xlim([0.181 0.202]);
% xlabel('time (s)');ylabel('vx (m/s)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.1\_l=0.1\_NAS','h=0.1\_l=0.1\_AS',...
%         'h=0.1\_l=0.15\_NAS','h=0.1\_l=0.15\_AS',...
%         'Location', 'northwest');
% 
% subplot(3,1,2);
% plot(time,vx_NAS_3(:,a:num),'^b--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_3(:,a:num),'^r--','MarkerIndices',1:2:length(time))
% hold on;
% 
% plot(time,vx_NAS_4(:,a:num),'vb--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_4(:,a:num),'vr--','MarkerIndices',1:2:length(time))
% hold on;
% xlim([0.181 0.202]);
% xlabel('time (s)');ylabel('vx (m/s)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.15\_l=0.1\_NAS','h=0.15\_l=0.1\_AS',...
%         'h=0.15\_l=0.15\_NAS','h=0.15\_l=0.15\_AS',...
%         'Location', 'northwest');
% 
% subplot(3,1,3);
% plot(time,vx_NAS_5(:,a:num),'<b--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_5(:,a:num),'<r--','MarkerIndices',1:2:length(time))
% hold on;
% 
% plot(time,vx_NAS_6(:,a:num),'>b--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_6(:,a:num),'>r--','MarkerIndices',1:2:length(time))
% hold on;
% xlim([0.181 0.202]);
% xlabel('time (s)');ylabel('vx (m/s)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.2\_l=0.1\_NAS','h=0.2\_l=0.1\_AS',...
%         'h=0.2\_l=0.15\_NAS','h=0.2\_l=0.15\_AS',...
%         'Location', 'northwest');
%     
%     
% f2=figure;
% subplot(3,1,1);
% plot(time,vz_NAS_1(:,a:num),'sb--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_AS_1(:,a:num),'sr--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_NAS_2(:,a:num),'db--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_AS_2(:,a:num),'dr--','MarkerIndices',1:2:length(time))
% hold on;
% xlim([0.181 0.202]);
% xlabel('time (s)');ylabel('vz (m/s)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.1\_l=0.1\_NAS','h=0.1\_l=0.1\_AS',...
%         'h=0.1\_l=0.15\_NAS','h=0.1\_l=0.15\_AS',...
%         'Location', 'northwest');
% ax = gca;
% ax.YAxis.TickLabelFormat = '%0.1f';
% ax.YAxis.Exponent = 0;
% subplot(3,1,2);
% plot(time,vz_NAS_3(:,a:num),'^b--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_AS_3(:,a:num),'^r--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_NAS_4(:,a:num),'vb--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_AS_4(:,a:num),'vr--','MarkerIndices',1:2:length(time))
% hold on;
% xlim([0.181 0.202]);
% xlabel('time (s)');ylabel('vz (m/s)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.15\_l=0.1\_NAS','h=0.15\_l=0.1\_AS',...
%         'h=0.15\_l=0.15\_NAS','h=0.15\_l=0.15\_AS',...
%         'Location', 'northwest');
% ax = gca;
% ax.YAxis.TickLabelFormat = '%0.1f';
% ax.YAxis.Exponent = 0;
% 
% 
% subplot(3,1,3);
% plot(time,vz_NAS_5(:,a:num),'<b--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_AS_5(:,a:num),'<r--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_NAS_6(:,a:num),'>b--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vz_AS_6(:,a:num),'>r--','MarkerIndices',1:2:length(time))
% hold on;
% xlim([0.181 0.202]);
% xlabel('time (s)');ylabel('vz (m/s)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.2\_l=0.1\_NAS','h=0.2\_l=0.1\_AS',...
%         'h=0.2\_l=0.15\_NAS','h=0.2\_l=0.15\_AS',...
%         'Location', 'northwest');
% ax = gca;
% ax.YAxis.TickLabelFormat = '%0.1f';
% ax.YAxis.Exponent = 0;
%% Agility force
% f1=figure;
% load('h=0.1_l=0.1/c_nas.mat');
% a=190;
% num=200;
% time=CONTACT_OUTPUT.lcm_timestamp/5;
% time=time(:,a:num);
% contact_nas_1=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.1_l=0.1/c_as.mat');
% contact_as_1=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.1_l=0.15/c_nas.mat');
% contact_nas_2=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.1_l=0.15/c_as.mat');
% contact_as_2=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.15_l=0.1/c_nas.mat');
% contact_nas_3=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.15_l=0.1/c_as.mat');
% contact_as_3=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.15_l=0.15/c_nas.mat');
% contact_nas_4=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.15_l=0.15/c_as.mat');
% contact_as_4=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.2_l=0.1/c_nas.mat');
% contact_nas_5=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.2_l=0.1/c_as.mat');
% contact_as_5=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.2_l=0.15/c_nas.mat');
% contact_nas_6=CONTACT_OUTPUT.contact_force;
% 
% load('h=0.2_l=0.15/c_as.mat');
% contact_as_6=CONTACT_OUTPUT.contact_force;
% 
% subplot(3,1,1);
% plot(time,contact_nas_1(:,a:num),'sb--','MarkerIndices',1:2:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,contact_as_1(:,a:num),'sr--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% plot(time,contact_nas_2(:,a:num),'db--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% plot(time,contact_as_2(:,a:num),'dr--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% xlim([0.187 0.200]);
% xlabel('time (s)');ylabel('F (N)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.1\_l=0.1\_NAS','h=0.1\_l=0.1\_AS',...
%         'h=0.1\_l=0.15\_NAS','h=0.1\_l=0.15\_AS',...
%         'Location', 'northwest');
%     
% subplot(3,1,2);
% plot(time,contact_nas_3(:,a:num),'^b--','MarkerIndices',1:2:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,contact_as_3(:,a:num),'^r--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% plot(time,contact_nas_4(:,a:num),'vb--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% plot(time,contact_as_4(:,a:num),'vr--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% xlim([0.187 0.200]);
% xlabel('time (s)');ylabel('F (N)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.15\_l=0.1\_NAS','h=0.15\_l=0.1\_AS',...
%         'h=0.15\_l=0.15\_NAS','h=0.15\_l=0.15\_AS',...
%         'Location', 'northwest');
% 
% subplot(3,1,3);
% plot(time,contact_nas_5(:,a:num),'<b--','MarkerIndices',1:2:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,contact_as_5(:,a:num),'<r--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% plot(time,contact_nas_6(:,a:num),'>b--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% plot(time,contact_as_6(:,a:num),'>r--','MarkerIndices',1:2:length(time),'LineWidth',1.2);
% hold on;
% xlim([0.187 0.200]);
% xlabel('time (s)');ylabel('F (N)');
% set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.2\_l=0.1\_NAS','h=0.2\_l=0.1\_AS',...
%         'h=0.2\_l=0.15\_NAS','h=0.2\_l=0.15\_AS',...
%         'Location', 'northwest');


%% Stability 
% load('h=0.1_l=0.1/v_nas.mat');
% Mp_NAS_1=Velocity_Recording.pitch_moment;
% Mp_NAS_1=Mp_NAS_1(:,2:end);
% load('h=0.1_l=0.1/v_as.mat');
% Mp_AS_1=Velocity_Recording.pitch_moment;
% Mp_AS_1=Mp_AS_1(:,2:end);
% 
% 
% load('h=0.1_l=0.15/v_nas.mat');
% Mp_NAS_2=Velocity_Recording.pitch_moment;
% Mp_NAS_2=Mp_NAS_2(:,2:end);
% load('h=0.1_l=0.15/v_as.mat');
% Mp_AS_2=Velocity_Recording.pitch_moment;
% Mp_AS_2=Mp_AS_2(:,2:end);
% 
% 
% load('h=0.15_l=0.1/v_nas.mat');
% Mp_NAS_3=Velocity_Recording.pitch_moment;
% Mp_NAS_3=Mp_NAS_3(:,2:end);
% load('h=0.15_l=0.1/v_as.mat');
% Mp_AS_3=Velocity_Recording.pitch_moment;
% Mp_AS_3=Mp_AS_3(:,2:end);
% 
% 
% load('h=0.15_l=0.15/v_nas.mat');
% Mp_NAS_4=Velocity_Recording.pitch_moment;
% Mp_NAS_4=Mp_NAS_4(:,2:end);
% load('h=0.15_l=0.15/v_as.mat');
% Mp_AS_4=Velocity_Recording.pitch_moment;
% Mp_AS_4=Mp_AS_4(:,2:end);
% 
% 
% load('h=0.2_l=0.1/v_nas.mat');
% Mp_NAS_5=Velocity_Recording.pitch_moment;
% Mp_NAS_5=Mp_NAS_5(:,2:end);
% load('h=0.2_l=0.1/v_as.mat');
% Mp_AS_5=Velocity_Recording.pitch_moment;
% Mp_AS_5=Mp_AS_5(:,2:end);
% 
% 
% load('h=0.2_l=0.15/v_nas.mat');
% Mp_NAS_6=Velocity_Recording.pitch_moment;
% Mp_NAS_6=Mp_NAS_6(:,2:end);
% load('h=0.2_l=0.15/v_as.mat');
% Mp_AS_6=Velocity_Recording.pitch_moment;
% Mp_AS_6=Mp_AS_6(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=200+300;
% num=5000;
% time=time(:,a:num);
% 
% f1=figure;
% subplot(3,1,1);
% plot(time,Mp_NAS_1(:,a:num),'sb--','MarkerIndices',1:100:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,Mp_AS_1(:,a:num),'sr--','MarkerIndices',1:100:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,Mp_NAS_2(:,a:num),'db--','MarkerIndices',1:100:length(time),'LineWidth',1.2);
% hold on;
% plot(time,Mp_AS_2(:,a:num),'dr--','MarkerIndices',1:100:length(time),'LineWidth',1.2);
% hold on;
% xlabel('time (s)');
% xlim([0.5 6]);
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.1\_l=0.1\_NAS','h=0.1\_l=0.1\_AS',...
%         'h=0.1\_l=0.15\_NAS','h=0.1\_l=0.15\_AS',...
%         'Location', 'northeast');
% ylabel('pitch momentum (N·m·s)','linewidth',1,'FontSize',12,'Fontname', 'Times New Roman','FontWeight','bold');
% ax = gca;
% ax.YAxis.TickLabelFormat = '%0.1f';
% ax.YAxis.Exponent = 0;
%     
%     
% time=Velocity_Recording.lcm_timestamp/5;
% a=200+359;
% num=4999;
% time=time(:,a:num);
% subplot(3,1,2);
% plot(time,Mp_NAS_3(:,a:num),'^b--','MarkerIndices',1:100:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,Mp_AS_3(:,a:num),'^r--','MarkerIndices',1:100:length(time), 'LineWidth',1.2);
% hold on;
% time=Velocity_Recording.lcm_timestamp/5;
% a=200+363;
% num=4999;
% time=time(:,a:num);
% plot(time,Mp_NAS_4(:,a:num),'vb--','MarkerIndices',1:100:length(time),'LineWidth',1.2);
% hold on;
% plot(time,Mp_AS_4(:,a:num),'vr--','MarkerIndices',1:100:length(time),'LineWidth',1.2);
% hold on;
% xlabel('time (s)');ylabel('pitch momentum (N·m·s)');
% xlim([0.563 6]);
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.15\_l=0.1\_NAS','h=0.15\_l=0.1\_AS',...
%         'h=0.15\_l=0.15\_NAS','h=0.15\_l=0.15\_AS',...
%         'Location', 'northeast');
% ylabel('pitch momentum (N·m·s)','linewidth',1,'FontSize',12,'Fontname', 'Times New Roman','FontWeight','bold');
% ax = gca;
% ax.YAxis.TickLabelFormat = '%0.1f';
% ax.YAxis.Exponent = 0;
%     
%     
% time=Velocity_Recording.lcm_timestamp/5;
% a=200+430;
% num=4999;
% time=time(:,a:num);
% subplot(3,1,3);
% plot(time,Mp_NAS_5(:,a:num),'<b--','MarkerIndices',1:100:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,Mp_AS_5(:,a:num),'<r--','MarkerIndices',1:100:length(time), 'LineWidth',1.2);
% hold on;
% plot(time,Mp_NAS_6(:,a:num),'>b--','MarkerIndices',1:100:length(time),'LineWidth',1.2);
% hold on;
% plot(time,Mp_AS_6(:,a:num),'>r--','MarkerIndices',1:100:length(time),'LineWidth',1.2);
% hold on;
% xlabel('time (s)');ylabel('pitch momentum (N·m·s)');
% xlim([0.63 6]);
% set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
% legend('h=0.2\_l=0.1\_NAS','h=0.2\_l=0.1\_AS',...
%         'h=0.2\_l=0.15\_NAS','h=0.2\_l=0.15\_AS',...
%         'Location', 'northeast');
% ylabel('pitch momentum (N·m·s)','linewidth',1,'FontSize',12,'Fontname', 'Times New Roman','FontWeight','bold');
% 
% ax = gca;
% ax.YAxis.TickLabelFormat = '%0.1f';
% ax.YAxis.Exponent = 0;


%% Energy
% data=[131 124.4
%       166  165.8];  
%  
% bar(data(:,2),'FaceColor',[0.9 0.3 0.1])  
% hold on
% bar(data(:,1),'FaceColor',[0 0.4 0.7])
% set(gca,'FontSize',15)
% set(gca,'fontname','times new roman') 
% 
% for i=1:2
% text(i,data(i,1)+1,num2str(data(i,1),'%.2f'),'color','w','HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',11)   
% text(i,data(i,2)+1,num2str(data(i,2),'%.2f'),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',11)   
% end
% 
% legend({'\fontname{times new roman}Upper','\fontname{times new roman}Lower'},'Orientation','horizontal','Location','northeast')






% X = categorical({'Total','Upper','Lower'});
% X = reordercats(X,{'Total','Upper','Lower'});
% Y = [131.1 167.4 138.9 181.3 164 198.1 202 230.5 198  266.2 237.6 275.1;
%      7.7    0.1    5.8   0.3  13   0.1   23  0.5   12   0.2  27.6 0.8;
%      123.4  167.3 133.1 181 151  198   179 230 186   266  210 274.3];
% b = bar(X,Y,1);
% % \FontName{Times New Roman}
% t=ylabel('Energy(J)','FontName','Times New Roman');
% 
% xtips1 = b(1).XEndPoints;
% ytips1 = b(1).YEndPoints; 
% labels1 = string(b(1).YData);
% text1=text(xtips1,ytips1+5,labels1,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips2 = b(2).XEndPoints;
% ytips2 = b(2).YEndPoints; 
% labels2 = string(b(2).YData);
% text(xtips2,ytips2+5,labels2,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips3 = b(3).XEndPoints;
% ytips3 = b(3).YEndPoints; 
% labels3 = string(b(3).YData);
% text(xtips3,ytips3+5,labels3,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips4 = b(4).XEndPoints;
% ytips4 = b(4).YEndPoints; 
% labels4 = string(b(4).YData);
% text(xtips4,ytips4+5,labels4,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips5 = b(5).XEndPoints;
% ytips5 = b(5).YEndPoints; 
% labels5 = string(b(5).YData);
% text(xtips5,ytips5+5,labels5,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% 
% 
% xtips6 = b(6).XEndPoints;
% ytips6 = b(6).YEndPoints; 
% labels6 = string(b(6).YData);
% text6=text(xtips6,ytips6+5,labels6,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips7 = b(7).XEndPoints;
% ytips7 = b(7).YEndPoints; 
% labels7 = string(b(7).YData);
% text(xtips7,ytips7+5,labels7,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips8 = b(8).XEndPoints;
% ytips8 = b(8).YEndPoints; 
% labels8 = string(b(8).YData);
% text(xtips8,ytips8+5,labels8,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips9 = b(9).XEndPoints;
% ytips9 = b(9).YEndPoints; 
% labels9 = string(b(9).YData);
% text(xtips9,ytips9+5,labels9,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips10 = b(10).XEndPoints;
% ytips10 = b(10).YEndPoints; 
% labels10 = string(b(10).YData);
% text(xtips10,ytips10+5,labels10,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips11 = b(11).XEndPoints;
% ytips11 = b(11).YEndPoints; 
% labels11 = string(b(11).YData);
% text(xtips11,ytips11+5,labels11,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% xtips12 = b(12).XEndPoints;
% ytips12 = b(12).YEndPoints; 
% labels12 = string(b(12).YData);
% text(xtips12,ytips12+5,labels12,'HorizontalAlignment','left',...
%     'VerticalAlignment','middle','FontSize',11,'rotation', 90);
% 
% 
% legend('h=0.1 l=0.1 AS','h=0.1 l=0.1 NAS','h=0.1 l=0.15 AS','h=0.1 l=0.15 NAS',...
%         'h=0.15 l=0.1 AS','h=0.15 l=0.1 NAS','h=0.15 l=0.15 AS','h=0.15 l=0.15 NAS',...
%         'h=0.2 l=0.1 AS','h=0.2 l=0.1 NAS','h=0.2 l=0.15 AS','h=0.2 l=0.15 NAS');
% ylabel('Energy  (J)','FontWeight','bold')
% % set(gca,'FontSize',15)
% ylim([0 500]);
% 
% set(gca,'FontSize',15,'FontName', 'times new romane');
a=1;


