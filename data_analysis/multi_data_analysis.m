close all; clear;clc;
%% Agility v
load('h=0.1_l=0.1/v_nas.mat');
vx_NAS_1=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS_1=vx_NAS_1(:,2:end);
vz_NAS_1=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS_1=vz_NAS_1(:,2:end);
Mp_NAS_1=Velocity_Recording.pitch_moment;
Mp_NAS_1=Mp_NAS_1(:,2:end);
load('h=0.1_l=0.1/v_as.mat');
vx_AS_1=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS_1=vx_AS_1(:,2:end);
vz_AS_1=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS_1=vz_AS_1(:,2:end);
Mp_AS_1=Velocity_Recording.pitch_moment;
Mp_AS_1=Mp_AS_1(:,2:end);

load('h=0.1_l=0.15/v_nas.mat');
vx_NAS_2=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS_2=vx_NAS_2(:,2:end);
vz_NAS_2=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS_2=vz_NAS_2(:,2:end);
Mp_NAS_2=Velocity_Recording.pitch_moment;
Mp_NAS_2=Mp_NAS_2(:,2:end);
load('h=0.1_l=0.15/v_as.mat');
vx_AS_2=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS_2=vx_AS_2(:,2:end);
vz_AS_2=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS_2=vz_AS_2(:,2:end);
Mp_AS_2=Velocity_Recording.pitch_moment;
Mp_AS_2=Mp_AS_2(:,2:end);

load('h=0.15_l=0.1/v_nas.mat');
vx_NAS_3=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS_3=vx_NAS_3(:,2:end);
vz_NAS_3=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS_3=vz_NAS_3(:,2:end);
Mp_NAS_3=Velocity_Recording.pitch_moment;
Mp_NAS_3=Mp_NAS_3(:,2:end);
load('h=0.15_l=0.1/v_as.mat');
vx_AS_3=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS_3=vx_AS_3(:,2:end);
vz_AS_3=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS_3=vz_AS_3(:,2:end);
Mp_AS_3=Velocity_Recording.pitch_moment;
Mp_AS_3=Mp_AS_3(:,2:end);

load('h=0.15_l=0.15/v_nas.mat');
vx_NAS_4=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS_4=vx_NAS_4(:,2:end);
vz_NAS_4=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS_4=vz_NAS_4(:,2:end);
Mp_NAS_4=Velocity_Recording.pitch_moment;
Mp_NAS_4=Mp_NAS_4(:,2:end);
load('h=0.15_l=0.15/v_as.mat');
vx_AS_4=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS_4=vx_AS_4(:,2:end);
vz_AS_4=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS_4=vz_AS_4(:,2:end);
Mp_AS_4=Velocity_Recording.pitch_moment;
Mp_AS_4=Mp_AS_4(:,2:end);
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=200;
% time=time(:,a:num);
% f=figure;
% plot(time,vx_NAS_4(:,a:num),'vb--','MarkerIndices',1:2:length(time))
% hold on;
% plot(time,vx_AS_4(:,a:num),'vr--','MarkerIndices',1:2:length(time))
% hold on;

load('h=0.2_l=0.1/v_nas.mat');
vx_NAS_5=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS_5=vx_NAS_5(:,2:end);
vz_NAS_5=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS_5=vz_NAS_5(:,2:end);
Mp_NAS_5=Velocity_Recording.pitch_moment;
Mp_NAS_5=Mp_NAS_5(:,2:end);
load('h=0.2_l=0.1/v_as.mat');
vx_AS_5=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS_5=vx_AS_5(:,2:end);
vz_AS_5=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS_5=vz_AS_5(:,2:end);
Mp_AS_5=Velocity_Recording.pitch_moment;
Mp_AS_5=Mp_AS_5(:,2:end);

load('h=0.2_l=0.15/v_nas.mat');
vx_NAS_6=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS_6=vx_NAS_6(:,2:end);
vz_NAS_6=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS_6=vz_NAS_6(:,2:end);
Mp_NAS_6=Velocity_Recording.pitch_moment;
Mp_NAS_6=Mp_NAS_6(:,2:end);
load('h=0.2_l=0.15/v_as.mat');
vx_AS_6=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS_6=vx_AS_6(:,2:end);
vz_AS_6=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS_6=vz_AS_6(:,2:end);
Mp_AS_6=Velocity_Recording.pitch_moment;
Mp_AS_6=Mp_AS_6(:,2:end);



time=Velocity_Recording.lcm_timestamp/5;
a=185;
num=200;
time=time(:,a:num);
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
f2=figure;
subplot(3,1,1);
plot(time,vz_NAS_1(:,a:num),'sb--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_AS_1(:,a:num),'sr--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_NAS_2(:,a:num),'db--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_AS_2(:,a:num),'dr--','MarkerIndices',1:2:length(time))
hold on;
xlim([0.181 0.202]);
xlabel('time (s)');ylabel('vz (m/s)');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
legend('h=0.1\_l=0.1\_NAS','h=0.1\_l=0.1\_AS',...
        'h=0.1\_l=0.15\_NAS','h=0.1\_l=0.15\_AS',...
        'Location', 'northwest');
ax = gca;
ax.YAxis.TickLabelFormat = '%0.1f';
ax.YAxis.Exponent = 0;
subplot(3,1,2);
plot(time,vz_NAS_3(:,a:num),'^b--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_AS_3(:,a:num),'^r--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_NAS_4(:,a:num),'vb--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_AS_4(:,a:num),'vr--','MarkerIndices',1:2:length(time))
hold on;
xlim([0.181 0.202]);
xlabel('time (s)');ylabel('vz (m/s)');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
legend('h=0.15\_l=0.1\_NAS','h=0.15\_l=0.1\_AS',...
        'h=0.15\_l=0.15\_NAS','h=0.15\_l=0.15\_AS',...
        'Location', 'northwest');
ax = gca;
ax.YAxis.TickLabelFormat = '%0.1f';
ax.YAxis.Exponent = 0;


subplot(3,1,3);
plot(time,vz_NAS_5(:,a:num),'<b--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_AS_5(:,a:num),'<r--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_NAS_6(:,a:num),'>b--','MarkerIndices',1:2:length(time))
hold on;
plot(time,vz_AS_6(:,a:num),'>r--','MarkerIndices',1:2:length(time))
hold on;
xlim([0.181 0.202]);
xlabel('time (s)');ylabel('vz (m/s)');
set(gca, 'linewidth',1, 'fontsize',15,'Fontname', 'Times New Roman','FontWeight','bold');
legend('h=0.2\_l=0.1\_NAS','h=0.2\_l=0.1\_AS',...
        'h=0.2\_l=0.15\_NAS','h=0.2\_l=0.15\_AS',...
        'Location', 'northwest');
ax = gca;
ax.YAxis.TickLabelFormat = '%0.1f';
ax.YAxis.Exponent = 0;
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
a=1;
