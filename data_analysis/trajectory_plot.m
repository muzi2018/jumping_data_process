clear;
close all;
% %% data h=0.15 l=0.1 --end_time=5 --target_realtime_rate=1
% %% robot with arm no swing 
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
% %% robot with arm 
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
%% robot without arm
load('robot_without_arm/WBC/h=0.15_l=0.1/velocity.mat');
% %% actual velocity

z_velocity_act_withoutarm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_withoutarm=z_velocity_act_withoutarm(:,2:end);
x_velocity_act_withoutarm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_withoutarm=x_velocity_act_withoutarm(:,2:end);


load('robot_with_arm/WBC/h=0.15_l=0.1/velocity.mat');
% %% actual velocity
z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
time=Velocity_Recording.lcm_timestamp;
a=170;
num=200;
f1=figure;
plot(time(:,a:num),z_velocity_act_witharm(:,a:num),'LineWidth',1.2);
hold on;
plot(time(:,a:num),z_velocity_act_withoutarm(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vz (m/s)');
legend('AS','NAS','Location','northwest');
set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');

f2=figure;
plot(time(:,a:num),x_velocity_act_witharm(:,a:num),'LineWidth',1.2);
hold on;
plot(time(:,a:num),x_velocity_act_withoutarm(:,a:num),'LineWidth',1.2);
xlabel('time (s)');ylabel('vx (m/s)');
legend('AS','NAS','Location','northwest');
set(gca, 'linewidth',1,'FontSize',15,'Fontname', 'Times New Roman','FontWeight','bold');
a=1;
% load('robot_without_arm/WBC/h=0.15_l=0.1/position.mat');
% %%% actual position
% z_position_act_withoutarm=Position_Recording.actual_com(:,3)';
% z_position_act_withoutarm=z_position_act_withoutarm(:,2:end);
% x_position_act_withoutarm=Position_Recording.actual_com(:,1)';
% x_position_act_withoutarm=x_position_act_withoutarm(:,2:end);
% 
% time=Velocity_Recording.lcm_timestamp;
% a=1;
% num=4000;
% time=time(:,a:num);
% f1=figure;
% 
% plot(time,z_velocity_act_witharm_noswing(:,a:num),'-.');
% % subplot(2,1,1)
% hold on;
% plot(time,z_velocity_act_witharm(:,a:num),'--');
% legend('vz witharm no swing','vz witharm swing');
% % % plot(time,zeros(1,num-a+1),'k');
% % % plot(time,upper,'k--');
% % % plot(time,lower,'k--');
% % legend('vz witharm','vz withoutarm');
% % xlabel("time (s)");
% % ylabel("vz (m/s)");
% % title("vz comp");
% % % plot(time(200),z_velocity_act_withoutarm(200),"*");
% % % text(time(200),z_velocity_act_withoutarm(200),"ddd");
% % saveas(f1,'vz comp.png')
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % % for a=1:3977
% % %     if time(a)==0.199967000000000
% % %         break;
% % %     end
% % % end
% % % for a=1:3977
% % %     if time(a)==0.580058000000000
% % %         break;
% % %     end
% % % end
% % 
% % % num=3800;
% % num=370;
% % a=1;
% % time=time(:,a:378);
% % z_velocity_act_witharm=z_velocity_act_witharm(:,a:378);
% % x_velocity_act_witharm=x_velocity_act_witharm(:,a:num);
% % z_position_act_witharm=z_position_act_witharm(:,a:num);
% % x_position_act_witharm=x_position_act_witharm(:,a:num);
% % vz_error_witharm=sqrt(pow2(z_velocity_act_witharm));
% % vx_error_witharm=sqrt(pow2(x_velocity_act_witharm));
% % 
% % z_velocity_act_withoutarm=z_velocity_act_withoutarm(:,a:371);
% % x_velocity_act_withoutarm=x_velocity_act_withoutarm(:,a:num);
% % z_position_act_withoutarm=z_position_act_withoutarm(:,a:num);
% % x_position_act_withoutarm=x_position_act_withoutarm(:,a:num);
% % vz_error_withoutarm=sqrt(pow2(z_velocity_act_withoutarm));
% % vx_error_withoutarm=sqrt(pow2(x_velocity_act_withoutarm));
% % time_=Velocity_Recording.lcm_timestamp;
% % time_=time_(:,a:371);
% % upper=linspace(0.02,0.02,num-a+1);
% % lower=linspace(-0.02,-0.02,num-a+1);
% % %% plot
% % f1=figure;
% % % subplot(2,1,1)
% % plot(time,z_velocity_act_witharm);
% % hold on;
% % plot(time_,z_velocity_act_withoutarm);
% % % plot(time,zeros(1,num-a+1),'k');
% % % plot(time,upper,'k--');
% % % plot(time,lower,'k--');
% % legend('vz witharm','vz withoutarm');
% % xlabel("time (s)");
% % ylabel("vz (m/s)");
% % title("vz comp");
% % % plot(time(200),z_velocity_act_withoutarm(200),"*");
% % % text(time(200),z_velocity_act_withoutarm(200),"ddd");
% % saveas(f1,'vz comp.png')
% % 
% % % f2=figure;
% % % % subplot(2,1,2)
% % % plot(time,x_velocity_act_witharm);
% % % hold on;
% % % plot(time,x_velocity_act_withoutarm);
% % % % plot(time,zeros(1,num-a+1));
% % % % plot(time,upper,'k--');
% % % % plot(time,lower,'k--');
% % % legend('vx witharm','vx withoutarm');
% % % xlabel("time (s)");
% % % ylabel("vx (m/s)");
% % % title("vx comp");
% % % saveas(f2,'vx comp.png')



% %% data h=0.3 l=0.2 --end_time=0.3 --target_realtime_rate=1
% 
% load('robot_with_arm/WBC/h=0.3_l=0.2/velocity_t=0.2.mat');
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
% 
% 
% 
% a=1;
% time=Velocity_Recording.lcm_timestamp;
% for j=1:200
%     if time(j)>0.2
%         num=j;
%         break;
%     end
% end
% z_velocity_act_witharm=z_velocity_act_witharm(:,a:num);
% f1=figure;
% time=time(:,a:num);
% plot(time,z_velocity_act_witharm,'--');
% % plot(time,z_velocity_act_witharm_noswing(:,a:num),'-.');
% % subplot(2,1,1)
% % hold on;
% 
% % legend('vz witharm no swing','vz witharm swing');



% %% data h=0.15 l=0.2 --end_time=0.3 --target_realtime_rate=1
% 
% load('robot_with_arm/WBC/h=0.15_l=0.2/velocity_stance.mat');
% %%% actual velocity
% z_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm=z_velocity_act_witharm(:,2:end);
% x_velocity_act_witharm=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm=x_velocity_act_witharm(:,2:end);
% 
% 
% load('robot_without_arm/WBC/h=0.15_l=0.2/velocity_stance.mat');
% %%% actual velocity
% z_velocity_act_withoutarm=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm=z_velocity_act_withoutarm(:,2:end);
% x_velocity_act_withoutarm=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_withoutarm=x_velocity_act_withoutarm(:,2:end);
% 
% 
% a=1;
% time=Velocity_Recording.lcm_timestamp;
% for j=1:250
%     if time(j)>0.2
%         num=j;
%         break;
%     end
% end
% z_velocity_act_witharm=z_velocity_act_witharm(:,a:num);
% z_velocity_act_withoutarm=z_velocity_act_withoutarm(:,a:num);
% time=time(:,a:num);
% vz_s=z_velocity_act_witharm(:,num);
% JA_s=Cal_JA(vz_s);
% vz_ns=z_velocity_act_withoutarm(:,num);
% JA_ns=Cal_JA(vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% 
% JA_recorder(1).info="h=0.15_l=0.2";
% JA_recorder(1).JA_s=JA_s;
% JA_recorder(1).JA_ns=JA_ns;
% JA_recorder(1).Delta_JA=Delta_JA;
% JA_recorders(1)=JA_recorder(1);
% 
% 
% 
% 
% 
% f1=figure;
% plot(time,z_velocity_act_withoutarm,'-.');
% hold on;
% plot(time,z_velocity_act_witharm,'--');
% legend('vz witharm no swing','vz witharm swing');



%% data structure
index=1;
JA_recorder=struct("info","h1","vz_s",[1,1],"vx_s",[1,1],"JA_s",0,"time_s",[1,1],"vz_ns",[1,1],"vx_ns",[1,1],"JA_ns",0,"time_ns",[1,1],"Delta_JA",0,"delta_vz",0,"delta_vx",0);

% %% data h=0.2 l=0.1 --end_time=0.3 --target_realtime_rate=1
% filename_s='Agility_analysis/h_0_2_l_0_1_s.mat';
% filename_ns='Agility_analysis/h_0_2_l_0_1_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);
% %% data h=0.2 l=0.2 --end_time=0.3 --target_realtime_rate=1
% index=index+1;
% filename_s='Agility_analysis/h_0_2_l_0_2_s.mat';
% filename_ns='Agility_analysis/h_0_2_l_0_2_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);
% %% data h=0.2 l=0.3 --end_time=0.3 --target_realtime_rate=1
% index=index+1;
% filename_s='Agility_analysis/h_0_2_l_0_3_s.mat';
% filename_ns='Agility_analysis/h_0_2_l_0_3_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);
% %% data h=0.2 l=0.4 --end_time=0.3 --target_realtime_rate=1
% index=index+1;
% filename_s='Agility_analysis/h_0_2_l_0_4_s.mat';
% filename_ns='Agility_analysis/h_0_2_l_0_4_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);
% %% data h=0.2 l=0.5 --end_time=0.3 --target_realtime_rate=1
% index=index+1;
% filename_s='Agility_analysis/h_0_2_l_0_5_s.mat';
% filename_ns='Agility_analysis/h_0_2_l_0_5_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);
% %% data h=0.2 l=0.6 --end_time=0.3 --target_realtime_rate=1
% index=index+1;
% filename_s='Agility_analysis/h_0_2_l_0_6_s.mat';
% filename_ns='Agility_analysis/h_0_2_l_0_6_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);
% 
% %% data h=0.5 l=1 --end_time=0.3 --target_realtime_rate=1
% index=index+1;
% filename_s='Agility_analysis/h_0_5_l_1_s.mat';
% filename_ns='Agility_analysis/h_0_5_l_1_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);

%% data h=0.5 l=0 --end_time=0.3 --target_realtime_rate=1

% filename_s='Agility_analysis/h_0_5_l_0_s.mat';
% filename_ns='Agility_analysis/h_0_5_l_0_ns.mat';
% JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder);
% JA_recorders(index)=JA_recorder;
% plot_vel(JA_recorders,index);

%% plot
f1=figure;
subplot(2,1,1)
plot(JA_recorders(1).time_ns,JA_recorders(1).vz_ns,'-.');
hold on;
plot(JA_recorders(1).time_s,JA_recorders(1).vz_s,'-.');
legend('vz witharm no swing','vz witharm swing');

subplot(2,1,2)
plot(JA_recorders(1).time_ns,JA_recorders(1).vx_ns,'-.');
hold on;
plot(JA_recorders(1).time_s,JA_recorders(1).vx_s,'-.');
legend('vx witharm no swing','vx witharm swing');



a=0;

function plot_vel(JA_recorders,index)
    f=figure;
    subplot(2,1,1)
    plot(JA_recorders(index).time_ns,JA_recorders(index).vz_ns,'-.');
    hold on;
    plot(JA_recorders(index).time_s,JA_recorders(index).vz_s,'-.');
    legend('vz witharm no swing','vz witharm swing');
    title(JA_recorders(index).info);
    subplot(2,1,2)
    plot(JA_recorders(index).time_ns,JA_recorders(index).vx_ns,'-.');
    hold on;
    plot(JA_recorders(index).time_s,JA_recorders(index).vx_s,'-.');
    legend('vx witharm no swing','vx witharm swing');
    title(JA_recorders(index).info());
end

function info=process_fileinfo(filename)
    load(filename);
    [filepath,info,ext] = fileparts(filename);
end

function JA = Cal_JA(vz,vx,num) 
    v=sqrt(pow2(vz(:,num))+pow2(vx(:,num)));
    g=9.8;
    T_stance=0.2;
    T_apx=vz(:,num)/g;
    JA=(pow2(v)/(2*9.8))/(T_stance+T_apx);
end   

function delta_vz,delta_vx = Cal_delta_v(vz_s,vx_s,vz_ns,vx_ns,num) 
    delta_vz=((vz_s(1,num)-vz_ns(1,num))/vz_ns(1,num))*100;
    delta_vx=((vx_s(1,num)-vx_ns(1,num))/vx_ns(1,num))*100;
end  

function num=process_time(Velocity_Recording)
    time=Velocity_Recording.lcm_timestamp;
    for j=1:250
        if time(j)>0.2
            num=j;
            break;
        end
    end
end

function JA_recorder=JA_Recording(filename_s,filename_ns,JA_recorder)
    info=process_fileinfo(filename_s);
    load(filename_s);
    num_s=process_time(Velocity_Recording);
    vz_s=Velocity_Recording.actual_com_velocity(:,3)';
    vz_s=vz_s(:,2:end);
    vz_s=vz_s(:,1:num_s);
    vx_s=Velocity_Recording.actual_com_velocity(:,1)';
    vx_s=vx_s(:,2:end);
    vx_s=vx_s(:,1:num_s);
    JA_s=Cal_JA(vz_s,vx_s,num_s);
    JA_recorder.info=info(1:end-2);
    JA_recorder.vz_s=vz_s;
    JA_recorder.vx_s=vx_s;
    JA_recorder.JA_s=JA_s;
    JA_recorder.time_s=Velocity_Recording.lcm_timestamp(:,1:num_s);
    
   
    load(filename_ns);
    num_ns=process_time(Velocity_Recording);
    vz_ns=Velocity_Recording.actual_com_velocity(:,3)';
    vz_ns=vz_ns(:,2:end);
    vz_ns=vz_ns(:,1:num_ns);
    vx_ns=Velocity_Recording.actual_com_velocity(:,1)';
    vx_ns=vx_ns(:,2:end);
    vx_ns=vx_ns(:,1:num_ns);
    JA_ns=Cal_JA(vz_ns,vx_ns,num_ns);
    JA_recorder.vz_ns=vz_ns;
    JA_recorder.vx_ns=vx_ns;
    JA_recorder.JA_ns=JA_ns;
    JA_recorder.time_ns=Velocity_Recording.lcm_timestamp(:,1:num_ns);
    Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
    JA_recorder.Delta_JA=Delta_JA;
    
    delta_vz=((vz_s(1,num_s)-vz_ns(1,num_ns))/vz_ns(1,num_ns))*100;
    delta_vx=((vx_s(1,num_s)-vx_ns(1,num_ns))/vx_ns(1,num_ns))*100;
    
    JA_recorder.delta_vz=delta_vz;
    JA_recorder.delta_vx=delta_vx;

end








% %% data h=0.2 l=0.2 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/jumping/h=0.2_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_witharm.index2=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index2=z_velocity_act_witharm.index2(:,2:end);
% x_velocity_act_witharm.index2=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm.index2=x_velocity_act_witharm.index2(:,2:end);
% load('robot_without_arm/WBC/jumping/h=0.2_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index2=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index2=z_velocity_act_withoutarm.index2(:,2:end);
% x_velocity_act_withoutarm.index2=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_withoutarm.index2=x_velocity_act_withoutarm.index2(:,2:end);
% 
% %% data h=0.3 l=0.2 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/jumping/h=0.3_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_witharm.index3=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index3=z_velocity_act_witharm.index3(:,2:end);
% x_velocity_act_witharm.index3=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm.index3=x_velocity_act_witharm.index3(:,2:end);
% load('robot_without_arm/WBC/jumping/h=0.3_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index3=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index3=z_velocity_act_withoutarm.index3(:,2:end);
% x_velocity_act_withoutarm.index3=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_withoutarm.index3=x_velocity_act_withoutarm.index3(:,2:end);
% 
% %% data h=0.4 l=0.2 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/jumping/h=0.4_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_witharm.index4=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index4=z_velocity_act_witharm.index4(:,2:end);
% x_velocity_act_witharm.index4=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm.index4=x_velocity_act_witharm.index4(:,2:end);
% load('robot_without_arm/WBC/jumping/h=0.4_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index4=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index4=z_velocity_act_withoutarm.index4(:,2:end);
% x_velocity_act_withoutarm.index4=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_withoutarm.index4=x_velocity_act_withoutarm.index4(:,2:end);
% 
% %% data h=0.5 l=0.2 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/jumping/h=0.5_l=0.2_.mat');
% %%% actual velocity
% z_velocity_act_witharm.index5=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index5=z_velocity_act_witharm.index5(:,2:end);
% x_velocity_act_witharm.index5=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_witharm.index5=x_velocity_act_witharm.index5(:,2:end);
% load('robot_without_arm/WBC/jumping/h=0.5_l=0.2.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index5=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index5=z_velocity_act_withoutarm.index5(:,2:end);
% x_velocity_act_withoutarm.index5=Velocity_Recording.actual_com_velocity(:,1)';
% x_velocity_act_withoutarm.index5=x_velocity_act_withoutarm.index5(:,2:end);
% 
% %% Cal the Agility
% JA_recorders={};
% a=1;
% time=Velocity_Recording.lcm_timestamp;
% for j=1:250
%     if time(j)>0.2
%         num=j;
%         break;
%     end
% end
% 
% z_velocity_act_witharm.index1=z_velocity_act_witharm.index1(:,a:num);
% z_velocity_act_withoutarm.index1=z_velocity_act_withoutarm.index1(:,a:num);
% x_velocity_act_witharm.index1=x_velocity_act_witharm.index1(:,a:num);
% x_velocity_act_withoutarm.index1=x_velocity_act_withoutarm.index1(:,a:num);
% time=time(:,a:num);
% v_s=sqrt(pow2(z_velocity_act_witharm.index1(:,num))+pow2(x_velocity_act_witharm.index1(:,num)));
% vz_s=z_velocity_act_witharm.index1(:,num);
% JA_s=Cal_JA(v_s,1);
% v_ns=sqrt(pow2(z_velocity_act_withoutarm.index1(:,num))+pow2(x_velocity_act_withoutarm.index1(:,num)));
% vz_ns=z_velocity_act_withoutarm.index1(:,num);
% 
% idx=1;
% name="h=0.1";
% JA_recorders=JA_Recording(v_s,vz_s,v_ns,vz_ns,JA_recorders,idx,name);
% 
% 
% 
% 
% z_velocity_act_witharm.index2=z_velocity_act_witharm.index2(:,a:num);
% z_velocity_act_withoutarm.index2=z_velocity_act_withoutarm.index2(:,a:num);
% x_velocity_act_witharm.index2=x_velocity_act_witharm.index2(:,a:num);
% x_velocity_act_withoutarm.index2=x_velocity_act_withoutarm.index2(:,a:num);
% time=time(:,a:num);
% v_s=sqrt(pow2(z_velocity_act_witharm.index2(:,num))+pow2(x_velocity_act_witharm.index2(:,num)));
% vz_s=z_velocity_act_witharm.index2(:,num);
% JA_s=Cal_JA(v_s,vz_s);
% v_ns=sqrt(pow2(z_velocity_act_withoutarm.index2(:,num))+pow2(x_velocity_act_withoutarm.index2(:,num)));
% vz_ns=z_velocity_act_withoutarm.index2(:,num);
% JA_ns=Cal_JA(v_ns,vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(2).info="h=0.2_l=0.2";
% JA_recorder(2).JA_s=JA_s;
% JA_recorder(2).JA_ns=JA_ns;
% JA_recorder(2).Delta_JA=Delta_JA;
% 
% 
% 
% z_velocity_act_witharm.index3=z_velocity_act_witharm.index3(:,a:num);
% z_velocity_act_withoutarm.index3=z_velocity_act_withoutarm.index3(:,a:num);
% x_velocity_act_witharm.index3=x_velocity_act_witharm.index3(:,a:num);
% x_velocity_act_withoutarm.index3=x_velocity_act_withoutarm.index3(:,a:num);
% time=time(:,a:num);
% v_s=sqrt(pow2(z_velocity_act_witharm.index3(:,num))+pow2(x_velocity_act_witharm.index3(:,num)));
% vz_s=z_velocity_act_witharm.index3(:,num);
% JA_s=Cal_JA(v_s,vz_s);
% v_ns=sqrt(pow2(z_velocity_act_withoutarm.index3(:,num))+pow2(x_velocity_act_withoutarm.index3(:,num)));
% vz_ns=z_velocity_act_withoutarm.index3(:,num);
% JA_ns=Cal_JA(v_ns,vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(3).info="h=0.3_l=0.2";
% JA_recorder(3).JA_s=JA_s;
% JA_recorder(3).JA_ns=JA_ns;
% JA_recorder(3).Delta_JA=Delta_JA;
% 
% z_velocity_act_witharm.index4=z_velocity_act_witharm.index4(:,a:num);
% z_velocity_act_withoutarm.index4=z_velocity_act_withoutarm.index4(:,a:num);
% x_velocity_act_witharm.index4=x_velocity_act_witharm.index4(:,a:num);
% x_velocity_act_withoutarm.index4=x_velocity_act_withoutarm.index4(:,a:num);
% time=time(:,a:num);
% v_s=sqrt(pow2(z_velocity_act_witharm.index4(:,num))+pow2(x_velocity_act_witharm.index4(:,num)));
% vz_s=z_velocity_act_witharm.index4(:,num);
% JA_s=Cal_JA(v_s,vz_s);
% v_ns=sqrt(pow2(z_velocity_act_withoutarm.index4(:,num))+pow2(x_velocity_act_withoutarm.index4(:,num)));
% vz_ns=z_velocity_act_withoutarm.index4(:,num);
% JA_ns=Cal_JA(v_ns,vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(4).info="h=0.4_l=0.2";
% JA_recorder(4).JA_s=JA_s;
% JA_recorder(4).JA_ns=JA_ns;
% JA_recorder(4).Delta_JA=Delta_JA;
% 
% 
% 
% z_velocity_act_witharm.index5=z_velocity_act_witharm.index5(:,a:num);
% z_velocity_act_withoutarm.index5=z_velocity_act_withoutarm.index5(:,a:num);
% x_velocity_act_witharm.index5=x_velocity_act_witharm.index5(:,a:num);
% x_velocity_act_withoutarm.index5=x_velocity_act_withoutarm.index5(:,a:num);
% time=time(:,a:num);
% v_s=sqrt(pow2(z_velocity_act_witharm.index5(:,num))+pow2(x_velocity_act_witharm.index5(:,num)));
% vz_s=z_velocity_act_witharm.index5(:,num);
% JA_s=Cal_JA(v_s,vz_s);
% v_ns=sqrt(pow2(z_velocity_act_withoutarm.index5(:,num))+pow2(x_velocity_act_withoutarm.index5(:,num)));
% vz_ns=z_velocity_act_withoutarm.index5(:,num);
% JA_ns=Cal_JA(v_ns,vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(5).info="h=0.5_l=0.2";
% JA_recorder(5).JA_s=JA_s;
% JA_recorder(5).JA_ns=JA_ns;
% JA_recorder(5).Delta_JA=Delta_JA;
% 
% f1=figure;
% subplot(2,1,1)
% plot(time,z_velocity_act_withoutarm.index5,'-.');
% hold on;
% plot(time,z_velocity_act_witharm.index5,'--');
% legend('vz witharm no swing','vz witharm swing');
% subplot(2,1,2)
% plot(time,x_velocity_act_withoutarm.index5,'-.');
% hold on;
% plot(time,x_velocity_act_witharm.index5,'--');
% legend('vx witharm no swing','vx witharm swing');
% 
% 
% num=250;
% f2=figure;
% subplot(2,1,1)
% plot(time,z_velocity_act_withoutarm.index5,'-.');
% hold on;
% plot(time,z_velocity_act_witharm.index5,'--');
% legend('vz witharm no swing','vz witharm swing');
% subplot(2,1,2)
% plot(time,x_velocity_act_withoutarm.index5,'-.');
% hold on;
% plot(time,x_velocity_act_witharm.index5,'--');
% legend('vx witharm no swing','vx witharm swing');


%% Vertical
% %% data h=0.1 l=0.0 --end_time=0.3 --target_realtime_rate=1
% 
% load('robot_with_arm/WBC/vertical/h=0.1.mat');
% %%% actual velocity
% z_velocity_act_witharm.index1=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index1=z_velocity_act_witharm.index1(:,2:end);
% 
% load('robot_without_arm/WBC/vertical/h=0.1.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index1=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index1=z_velocity_act_withoutarm.index1(:,2:end);
% 
% %% data h=0.2 l=0.0 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/vertical/h=0.2.mat');
% %%% actual velocity
% z_velocity_act_witharm.index2=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index2=z_velocity_act_witharm.index2(:,2:end);
% 
% load('robot_without_arm/WBC/vertical/h=0.2.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index2=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index2=z_velocity_act_withoutarm.index2(:,2:end);
% 
% %% data h=0.3 l=0.0 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/vertical/h=0.3.mat');
% %%% actual velocity
% z_velocity_act_witharm.index3=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index3=z_velocity_act_witharm.index3(:,2:end);
% 
% load('robot_without_arm/WBC/vertical/h=0.3.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index3=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index3=z_velocity_act_withoutarm.index3(:,2:end);
% 
% %% data h=0.4 l=0.0 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/vertical/h=0.4.mat');
% %%% actual velocity
% z_velocity_act_witharm.index4=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index4=z_velocity_act_witharm.index4(:,2:end);
% %% data h=0.1 l=0.0 --end_time=0.3 --target_realtime_rate=1
% 
% load('robot_with_arm/WBC/vertical/h=0.1.mat');
% %%% actual velocity
% z_velocity_act_witharm.index1=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index1=z_velocity_act_witharm.index1(:,2:end);
% 
% load('robot_without_arm/WBC/vertical/h=0.1.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index1=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index1=z_velocity_act_withoutarm.index1(:,2:end);
% 
% %% data h=0.2 l=0.0 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/vertical/h=0.2.mat');
% %%% actual velocity
% z_velocity_act_witharm.index2=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index2=z_velocity_act_witharm.index2(:,2:end);
% 
% load('robot_without_arm/WBC/vertical/h=0.2.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index2=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index2=z_velocity_act_withoutarm.index2(:,2:end);
% 
% %% data h=0.3 l=0.0 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/vertical/h=0.4.mat');
% load('robot_without_arm/WBC/vertical/h=0.4.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index4=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index4=z_velocity_act_withoutarm.index4(:,2:end);
% 
% %% data h=0.5 l=0.0 --end_time=0.3 --target_realtime_rate=1
% load('robot_with_arm/WBC/vertical/h=0.5.mat');
% %%% actual velocity
% z_velocity_act_witharm.index5=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_witharm.index5=z_velocity_act_witharm.index5(:,2:end);
% 
% load('robot_without_arm/WBC/vertical/h=0.5.mat');
% %%% actual velocity
% z_velocity_act_withoutarm.index5=Velocity_Recording.actual_com_velocity(:,3)';
% z_velocity_act_withoutarm.index5=z_velocity_act_withoutarm.index5(:,2:end);
% 
% %% Cal the Agility
% a=1;
% time=Velocity_Recording.lcm_timestamp;
% for j=1:250
%     if time(j)>0.2
%         num=j;
%         break;
%     end
% end
% z_velocity_act_witharm.index1=z_velocity_act_witharm.index1(:,a:num);
% z_velocity_act_withoutarm.index1=z_velocity_act_withoutarm.index1(:,a:num);
% time=time(:,a:num);
% vz_s=z_velocity_act_witharm.index1(:,num);
% JA_s=Cal_JA(vz_s);
% vz_ns=z_velocity_act_withoutarm.index1(:,num);
% JA_ns=Cal_JA(vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(1).info="h=0.1";
% JA_recorder(1).JA_s=JA_s;
% JA_recorder(1).JA_ns=JA_ns;
% JA_recorder(1).Delta_JA=Delta_JA;
% 
% 
% 
% 
% 
% vz_s=z_velocity_act_witharm.index2(:,num);
% JA_s=Cal_JA(vz_s);
% vz_ns=z_velocity_act_withoutarm.index2(:,num);
% JA_ns=Cal_JA(vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(2).info="h=0.2";
% JA_recorder(2).JA_s=JA_s;
% JA_recorder(2).JA_ns=JA_ns;
% JA_recorder(2).Delta_JA=Delta_JA;
% 
% 
% vz_s=z_velocity_act_witharm.index3(:,num);
% JA_s=Cal_JA(vz_s);
% vz_ns=z_velocity_act_withoutarm.index3(:,num);
% JA_ns=Cal_JA(vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(3).info="h=0.3";
% JA_recorder(3).JA_s=JA_s;
% JA_recorder(3).JA_ns=JA_ns;
% JA_recorder(3).Delta_JA=Delta_JA;
% 
% vz_s=z_velocity_act_witharm.index4(:,num);
% JA_s=Cal_JA(vz_s);
% vz_ns=z_velocity_act_withoutarm.index4(:,num);
% JA_ns=Cal_JA(vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(4).info="h=0.4";
% JA_recorder(4).JA_s=JA_s;
% JA_recorder(4).JA_ns=JA_ns;
% JA_recorder(4).Delta_JA=Delta_JA;
% f1=figure;
% plot(time,z_velocity_act_withoutarm.index4,'-.');
% hold on;
% plot(time,z_velocity_act_witharm.index4,'--');
% legend('vz witharm no swing','vz witharm swing');
% 
% 
% vz_s=z_velocity_act_witharm.index5(:,num);
% JA_s=Cal_JA(vz_s);
% vz_ns=z_velocity_act_withoutarm.index5(:,num);
% JA_ns=Cal_JA(vz_ns);
% Delta_JA=((JA_s-JA_ns)/JA_ns)*100;
% JA_recorder(5).info="h=0.5";
% JA_recorder(5).JA_s=JA_s;
% JA_recorder(5).JA_ns=JA_ns;
% JA_recorder(5).Delta_JA=Delta_JA;



