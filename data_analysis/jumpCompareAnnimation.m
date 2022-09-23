clear variables;
close all;
rigid=load('JumpRigid.mat');
compliant=load('JumpCompliant.mat');

startT_rig=21.68;
tmp=find(rigid.time>startT_rig);
startN_rig=tmp(1);
endT_rig=startT_rig+8;
tmp=find(rigid.time>endT_rig);
endN_rig=tmp(1);

startT_cpl=19.932;
tmp=find(compliant.time>startT_cpl);
startN_cpl=tmp(1);
endT_cpl=startT_cpl+8;
tmp=find(compliant.time>endT_cpl);
endN_cpl=tmp(1);

figure();

hold on;
% plot(rigid.time(startN_rig:endN_rig)-rigid.time(startN_rig), ...
%     rigid.pos(startN_rig:endN_rig)-0.05);
% plot(compliant.time(startN_cpl:endN_cpl)-compliant.time(startN_cpl), ...
%     compliant.pos(startN_cpl:endN_cpl)-0.05);
plot(rigid.time(startN_rig)-rigid.time(startN_rig), ...
    rigid.pos(startN_rig)-0.05);
plot(compliant.time(startN_cpl)-compliant.time(startN_cpl), ...
    compliant.pos(startN_cpl)-0.05);
ax=gca;
grid on;
xlabel('time (s)');
ylabel('hip joint height (m)');
legend('Rigid','Compliant','autoupdate','off','position',[0.2 0.85 0.1 0.1]);
axis manual;
xlim([0 8]);ylim([0.25 0.8]); grid on;
set(ax,'NextPlot','add');
set(ax,'FontSize',14);

v=VideoWriter('JumpCmp.avi');
v.Quality = 95;
v.FrameRate=90;
open(v);
iOld=1;
N=endN_cpl-startN_cpl;
for i=4:3:N
    plot(ax,rigid.time(iOld+startN_rig:startN_rig+i)-rigid.time(startN_rig), ...
        rigid.pos(iOld+startN_rig:i+startN_rig)-0.05,'color','#0072BD', ...
        'LineWidth',1.5);
    plot(ax,compliant.time(iOld+startN_cpl:startN_cpl+i)-compliant.time(startN_cpl), ...
        compliant.pos(iOld+startN_cpl:startN_cpl+i)-0.05,'Color','#D95319', ...
        'LineWidth',1.5);
    iOld=i;
    frame=getframe(gcf);
    writeVideo(v,frame);
end

close(v);
%% subfunction
function [fcal,data]=stiffVadV2(mec,data,stiffUp,stiffDown)
% contact forces estimation based on close chain jacobian
%edOff=(data.OffData.EDdes-data.OffData.EDfb)*0; %!!!!!!!!!! check this !!!!!!!!
edOff=[-0.0058;0.0128]*0;

theta1=-data.MAfb(2)/180*pi;
theta2=-data.MAfb(3)/180*pi-pi/2;
theta_cl1=data.EDfb(1)-theta2-mec.CDG+edOff(1);
theta_cl2=data.EDfb(2)+data.EDfb(1)+(abs(mec.FGH)-pi)+edOff(1)+edOff(2);
thetaD=data.EDfb(1)+edOff(1);
thetaG=data.EDfb(2)+edOff(2);
[theta_cl1New,theta_cl2New]=getClAngle(mec,theta1,theta2,thetaD,thetaG);
theta_cl1Use=theta_cl1New;
theta_cl2Use=theta_cl2New;
Jbar=JbarCal(mec,theta1,theta2,thetaD,thetaG,theta_cl1Use,theta_cl2Use);
tauMe=[theta_cl1Use;theta_cl2Use].*[stiffUp;stiffDown];
Jp=Jbar(1:2,3:4);
fcal=Jp'\tauMe;
data.thetaCPL=[theta_cl1New,theta_cl2New];

%[theta_cl1New,theta_cl2New]=getClAngle(mec,theta1,theta2,thetaD,thetaG);
%fprintf('cl1Old=%g, cl1New=%g, cl2Old=%g, cl2New=%g\n', theta_cl1, ...
%    theta_cl1New,theta_cl2,theta_cl2New);
%fprintf('fMe=[%g,%g], fcal=[%g,%g]\n',data.w1Data.f(1),data.w1Data.f(3), ...
%    fcal(1),fcal(2));
end

function [theta_cl1,theta_cl2]=getClAngle(mec,theta1,theta2,thetaD,thetaG)
pB=[0;0];
pD=Rz2D(theta1)*[0;-mec.AC];
pA=Rz2D(theta2)*mec.CD/mec.AC*(pD-pB)+pB;
pG=Rz2D(thetaD)*mec.DG/mec.AC*(pD-pB)+pD;
pH=Rz2D(thetaG)*mec.GH/mec.DG*(pG-pD)+pG;
pE=(pD-pB)*(mec.AC-mec.FG)/mec.AC+pB;
pcl1=Rz2D(-mec.CDG)*mec.cl1_D/mec.DG*(pG-pD)+pD;
[pcx,pcy]=Get1From2(pcl1(1),pcl1(2),pA(1),pA(2),mec.CD-mec.cl1_D, ...
    mec.AC,'xSmaller');
pC=[pcx;pcy];
vCur=(pC-pcl1)/norm(pC-pcl1);
vNor=(pcl1-pD)/norm(pcl1-pD);
%theta_cl1=asin(vCur(1)*vNor(2)-vCur(2)*vNor(1));
theta_cl1=-acos(vCur'*vNor)*sign(vCur(2)-vNor(2));
pcl2=Rz2D(-mec.FGH)*mec.cl2_G/mec.GH*(pH-pG)+pG;
[pFx,pFy]=Get1From2(pcl2(1),pcl2(2),pE(1),pE(2),mec.FG-mec.cl2_G, ...
    mec.DG,'yBigger');
if (pFy-pE(2))-(pcl2(2)-pE(2))<0
    [pFx,pFy]=Get1From2(pcl2(1),pcl2(2),pE(1),pE(2),mec.FG-mec.cl2_G, ...
        mec.DG,'xBigger');
end
pF=[pFx;pFy];
vCur=(pF-pcl2)/norm(pF-pcl2);
vNor=(pcl2-pG)/norm(pcl2-pG);
%theta_cl2=asin(vCur(1)*vNor(2)-vCur(2)*vNor(1));
theta_cl2=-acos(vCur'*vNor)*sign(vCur(1)-vNor(1));
end

function [xout,yout]=Get1From2(x1,y1,x2,y2,l1,l2,limit)
% get a point position with its distances to two ref points
% this function will return 99 if no solution found
% limit: yBigger, ySmaller, xBigger, xSmaller

D=sqrt((x1-x2)^2+(y1-y2)^2);
if ~(l1+l2>=D && abs(l1-l2)<D)
    xout=complex(0,1);
    yout=complex(0,1);
    return;
end
% if abs(l1+l2-D)<10^-3
%     xout=x1+l1/D*(x2-x1);
%     yout=y1+l1/D*(y2-y1);
%     return;
% end
A=(l1+l2)^2-(x1-x2)^2-(y1-y2)^2;
B=-(l1-l2)^2+(x1-x2)^2+(y1-y2)^2;
E=(-l1^2+l2^2)*(y1-y2)+(y1+y2)*((x1-x2)^2-y1*y2)+y1^3+y2^3;
F=2*((x1-x2)^2+(y1-y2)^2);
temp=sqrt(A*B);
yo1=(x1*temp-x2*temp+E)/F;
yo2=(x2*temp-x1*temp+E)/F;
xo1=sqrt(l1^2-(yo1-y1)^2)+x1;
if abs((xo1-x2)^2+(yo1-y2)^2-l2^2)>10^-4
    xo1=-sqrt(l1^2-(yo1-y1)^2)+x1;
end
xo2=sqrt(l1^2-(yo2-y1)^2)+x1;
if abs((xo2-x2)^2+(yo2-y2)^2-l2^2)>10^-4
    xo2=-sqrt(l1^2-(yo2-y1)^2)+x1;
end
if abs(yo1-yo2)<10^-4
    xo2=2*x1-xo1;
end
if strcmp('yBigger',limit)
    if yo1>yo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
elseif strcmp('ySmaller',limit)
    if yo1<yo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
elseif strcmp('xSmaller',limit)
    if xo1<xo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
elseif strcmp('xBigger',limit)
    if xo1>xo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
else
    error('wrong input option!');
end
end

function M=Rz2D(theta)
% 2D rotation function
M=[cos(theta),-sin(theta);
    sin(theta),cos(theta)];
end

function Jbar=JbarCal(mec,theta1,theta2,thetaD,thetaG,theta_cl1,theta_cl2)
AC=mec.AC;
CD=mec.CD;
CDG=mec.CDG;
DG=mec.DG;
FG=mec.FG;
FGH=mec.FGH;
GH=mec.GH;
cl1_D=mec.cl1_D;
cl2_G=mec.cl2_G;
[Jee_a,Jee_p,Jca,Jcp] = JacCChain(AC,CD,CDG,DG,FG,FGH,GH,cl1_D,cl2_G,theta1,theta2,thetaD,thetaG,theta_cl1,theta_cl2);
Jbar=Jee_a-Jee_p*(Jcp\Jca);
end

function [Jee_a,Jee_p,Jca,Jcp] = JacCChain(AC,CD,CDG,DG,FG,FGH,GH,cl1_D,cl2_G,theta1,theta2,thetaD,thetaG,theta_cl1,theta_cl2)
%JacCChain
%    [Jee_a,Jee_p,Jca,Jcp] = JacCChain(AC,CD,CDG,DG,FG,FGH,GH,cl1_D,cl2_G,THETA1,THETA2,thetaD,thetaG,THETA_CL1,THETA_CL2)

%    This function was generated by the Symbolic Math Toolbox version 9.0.
%    08-Sep-2022 12:59:24

t2 = theta1+thetaD;
t3 = CD.^2;
t4 = -CDG;
t5 = -FGH;
t9 = -thetaD;
t10 = -theta_cl1;
t6 = cos(t2);
t7 = sin(t2);
t8 = t2+thetaG;
t17 = CDG+t9+theta2;
t18 = t4+thetaD+theta_cl1;
t19 = t5+thetaD+thetaG;
t20 = t5+thetaG+theta_cl2;
t11 = cos(t8);
t12 = sin(t8);
t13 = DG.*t6;
t14 = DG.*t7;
t21 = sin(t17);
t22 = sin(t18);
t23 = sin(t19);
t24 = sin(t20);
t25 = t19+theta_cl2;
t28 = t10+t17;
t15 = GH.*t11;
t16 = GH.*t12;
Jee_a = reshape([t13+t15+AC.*cos(theta1),t14+t16+AC.*sin(theta1),0.0,0.0,0.0,0.0,0.0,0.0],[2,4]);
if nargout > 1
    Jee_p = reshape([t13+t15,t14+t16,t15,t16],[2,2]);
end
if nargout > 2
    t26 = sin(t25);
    t29 = sin(t28);
    t30 = CD.*cl1_D.*t21.*2.0;
    t27 = FG.*t26;
    t31 = CD.*cl1_D.*t29.*2.0;
    t32 = t3.*t29.*2.0;
    Jca = reshape([0.0,0.0,t30-t31+t32+AC.*CD.*sin(theta2).*2.0,0.0,(CD-cl1_D).*(AC.*t22+CD.*t29+cl1_D.*sin(theta_cl1)).*-2.0,0.0,0.0,(FG-cl2_G).*(-t27+AC.*t26+DG.*t24+cl2_G.*sin(theta_cl2)).*-2.0],[2,4]);
end
if nargout > 3
    Jcp = reshape([-t30+t31-t32-AC.*CD.*t22.*2.0+AC.*cl1_D.*t22.*2.0+AC.*cl1_D.*sin(CDG+t9).*2.0,(AC-FG).*(t27+cl2_G.*t23-cl2_G.*t26+DG.*sin(thetaD)).*-2.0,0.0,AC.*t27.*-2.0+FG.*t27.*2.0-cl2_G.*t27.*2.0-DG.*FG.*t24.*2.0-AC.*cl2_G.*t23.*2.0+AC.*cl2_G.*t26.*2.0+DG.*cl2_G.*t24.*2.0+FG.*cl2_G.*t23.*2.0+DG.*cl2_G.*sin(FGH-thetaG).*2.0],[2,2]);
end
end









