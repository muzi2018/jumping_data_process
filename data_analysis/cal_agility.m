function Ag = cal_agility(vx,vz)
    g=9.8;
    h=power(vz,2)/(2*g);
    t_off=2*vz/g;
    l=t_off*vx;
    Ag=sqrt(power(h,2)+power(l,2))/(0.2+t_off);
end