clear all;
close all;
load('h=0.15_l=0.1/v_nas.mat');
vx_NAS=Velocity_Recording.actual_com_velocity(:,1)';
vx_NAS=vx_NAS(:,2:end);
vz_NAS=Velocity_Recording.actual_com_velocity(:,3)';
vz_NAS=vz_NAS(:,2:end);

load('h=0.15_l=0.1/v_as.mat');
vx_AS=Velocity_Recording.actual_com_velocity(:,1)';
vx_AS=vx_AS(:,2:end);
vz_AS=Velocity_Recording.actual_com_velocity(:,3)';
vz_AS=vz_AS(:,2:end);

time=Velocity_Recording.lcm_timestamp/5;
a=1;
num=200;
time=time(:,a:num);

figure();
hold on;
plot(time(1),vx_NAS(1),'color','#0072BD');
plot(time(1),vx_AS(1),'Color','#D95319');
ax=gca;
grid on;
xlabel('time (s)');ylabel('vx (m/s)');
legend('NAS','AS','autoupdate','off','Location', 'northwest');
axis manual;
xlim([0 0.2]);ylim([0 0.3]); grid on;

set(ax,'NextPlot','add');
set(ax,'FontSize',14);

v=VideoWriter('JumpCmp.avi');
v.Quality = 100;
v.FrameRate=200;
open(v);
iOld=1;
for i=a:1:num

    plot(time(iOld:iOld+1),vx_NAS(iOld:iOld+1),'color','#0072BD');
    plot(time(iOld:iOld+1),vx_AS(iOld:iOld+1),'Color','#D95319');
    iOld=i;
    frame=getframe(gcf);
    writeVideo(v,frame);
end

close(v);

