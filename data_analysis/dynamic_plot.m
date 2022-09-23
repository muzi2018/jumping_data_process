clear all;
close all;
%%
% load('/home/taizun/jumping_data/robot_without_arm/WBC/h=0.15_l=0.1/velocity.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% 
% load('h=0.15_l=0.1/v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=1;
% num=200;
% time=time(:,a:num);
% 
% figure();
% hold on;
% plot(time(1),vx_NAS(1),'color','#0072BD','LineWidth',1.5);
% plot(time(1),vx_AS(1),'Color','#D95319','LineWidth',1.5);
% ax=gca;
% grid on;
% xlabel('time (s)');ylabel('vx (m/s)');
% legend('NAS','AS','autoupdate','off','Location', 'northwest');
% axis manual;
% xlim([0 0.2]);ylim([0 0.3]); grid on;
% 
% set(ax,'NextPlot','add');
% set(ax,'FontSize',14);
% 
% v=VideoWriter('Agility_vx_1s.avi');
% v.Quality = 100;
% v.FrameRate=200;
% open(v);
% iOld=1;
% for i=a:1:num
% 
%     plot(time(iOld:iOld+1),vx_NAS(iOld:iOld+1),'color','#0072BD','LineWidth',1.5);
%     plot(time(iOld:iOld+1),vx_AS(iOld:iOld+1),'Color','#D95319','LineWidth',1.5);
%     iOld=i;
%     frame=getframe(gcf);
%     writeVideo(v,frame);
% end
% close(v);

%%
clear all;
close all;
load('/home/taizun/jumping_data/robot_without_arm/WBC/h=0.15_l=0.1/velocity.mat');
vz_NAS=Velocity_Recording.actual_com_velocity(:,1)';
vz_NAS=vz_NAS(:,2:end);
vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS=vz_NAS(:,2:end);

load('h=0.15_l=0.1/v_as.mat');
vz_AS=Velocity_Recording.actual_com_velocity(:,1)';
vz_AS=vz_AS(:,2:end);
vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS=vz_AS(:,2:end);

time=Velocity_Recording.lcm_timestamp/5;
a=1;
num=200;
time=time(:,a:num);

figure();
hold on;
plot(time(1),vz_NAS(1),'color','#0072BD','LineWidth',1.5);
plot(time(1),vz_AS(1),'Color','#D95319','LineWidth',1.5);
ax=gca;
grid on;
xlabel('time (s)');ylabel('vz (m/s)');
legend('NAS','AS','autoupdate','off','Location', 'northwest');
axis manual;
xlim([0 0.2]);ylim([0 1.8]); grid on;

set(ax,'NextPlot','add');
set(ax,'FontSize',14);

v=VideoWriter('Agility_vz_1s.avi');
% v=VideoWriter('Stability_moment.avi');
v.Quality = 100;
v.FrameRate=200;
open(v);
iOld=1;
for i=a:1:num

    plot(time(iOld:iOld+1),vz_NAS(iOld:iOld+1),'color','#0072BD','LineWidth',1.5);
    plot(time(iOld:iOld+1),vz_AS(iOld:iOld+1),'Color','#D95319','LineWidth',1.5);
    iOld=i;
    frame=getframe(gcf);
    writeVideo(v,frame);
end

close(v);

%%
% clear all;
% close all;
% load('h=0.15_l=0.1/v_nas.mat');
% vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_NAS=vx_NAS(:,2:end);
% vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_NAS=vz_NAS(:,2:end);
% 
% Mp_NAS=Velocity_Recording.pitch_moment;
% Mp_NAS=Mp_NAS(:,2:end);
% 
% load('h=0.15_l=0.1/v_as.mat');
% vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
% vx_AS=vx_AS(:,2:end);
% vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
% vz_AS=vz_AS(:,2:end);
% Mp_AS=Velocity_Recording.pitch_moment;
% Mp_AS=Mp_AS(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp/5;
% a=550;
% num=4999;
% % time=time(:,a:num);
% 
% figure();
% hold on;
% plot(time(a),Mp_NAS(a),'color','#0072BD','LineWidth',1.5);
% plot(time(a),Mp_AS(a),'Color','#D95319','LineWidth',1.5);
% ax=gca;
% grid on;
% xlabel('time (s)');ylabel('moment (N·m·s)');
% legend('NAS','AS','autoupdate','off','Location', 'northwest');
% axis manual;
% xlim([0.55 5]);ylim([-2 1.8]); grid on;
% 
% set(ax,'NextPlot','add');
% set(ax,'FontSize',14);
% 
% v=VideoWriter('Stability_moment.avi');
% v.Quality = 95;
% v.FrameRate=100;
% open(v);
% iOld=a;
% for i=a:10:num
% %     if iOld+10>4999
% %         iOld=4989;
% %     end
%     plot(time(iOld:iOld+10),Mp_NAS(iOld:iOld+10),'color','#0072BD','LineWidth',1.5);
%     plot(time(iOld:iOld+10),Mp_AS(iOld:iOld+10),'Color','#D95319','LineWidth',1.5);
%     iOld=i;
%     frame=getframe(gcf);
%     writeVideo(v,frame);
% end
% close(v);


