on
%% Şerif Batıkan Çobanoğlu 190517012


function [S1,S4,S3,S6,S5,S2] = fcn(Vref,teta,Vdc,fs,tr)
S1=0;
S2=0;
S3=0;
S4=0;
S5=0;
S6=0;
ma=(sqrt(3)*Vref)/Vdc;
Ts=1/fs;

if(teta>0 && teta<pi/3) %SEKTOR 1
    Ta = Ts*ma*sin(pi/3-teta);
    Tb = Ts*ma*sin(teta);
    To = Ts-Ta-Tb;
        if(tr < Ta)
            S1=1; S6=1; S2=1;
            S4=0; S3=0; S5=0;
        end
        if(tr > Ta && tr < Ta + Tb)
            S1=1; S3=1; S2=1;
            S4=0; S6=0; S5=0;
        end
        if(tr > Ta + Tb && tr < Ta + Tb + To)
            S1=1; S3=1; S5=1;
            S4=0; S6=0; S2=0;
        end
        
elseif(teta>pi/3 && teta<(2*pi)/3) %SEKTOR 2 
    Ta = Ts*ma*sin((2*pi)/3-teta);
    Tb = Ts*ma*sin(teta-pi/3);
    To = Ts-Ta-Tb;
        if(tr < Ta)
            S1=1; S3=1; S2=1;
            S4=0; S6=0; S5=0;
        end
        if(tr > Ta && tr < Ta + Tb)
            S4=1; S3=1; S2=1;
            S1=0; S6=0; S5=0;
        end
        if(tr > Ta + Tb && tr < Ta + Tb + To)
            S1=1; S3=1; S5=1;
            S4=0; S6=0; S2=0;
        end
        
elseif(teta>(2*pi)/3 && teta<(3*pi)/3) %SEKTOR 3
    Ta = Ts*ma*sin((3*pi)/3-teta);
    Tb = Ts*ma*sin(teta-(2*pi)/3);
    To = Ts-Ta-Tb;
        if(tr < Ta)
            S4=1; S3=1; S2=1;
            S1=0; S6=0; S5=0;
        end
        if(tr > Ta && tr < Ta + Tb)
            S4=1; S3=1; S5=1;
            S1=0; S6=0; S2=0;
        end
        if(tr > Ta + Tb && tr < Ta + Tb + To)
            S1=1; S3=1; S5=1;
            S4=0; S6=0; S2=0;
        end
        
elseif((teta>(3*pi)/3) && (teta<(4*pi)/3)) %SEKTOR 4
    Ta = Ts*ma*sin((4*pi)/3-teta);
    Tb = Ts*ma*sin(teta-(3*pi)/3);
    To = Ts-Ta-Tb;
        if(tr < Ta)
            S4=1; S3=1; S5=1;
            S1=0; S6=0; S2=0;
        end
        if(tr > Ta && tr < Ta + Tb)
            S4=1; S6=1; S5=1;
            S1=0; S3=0; S2=0;
        end
        if(tr > Ta + Tb && tr < Ta + Tb + To)
            S1=1; S3=1; S5=1;
            S4=0; S6=0; S2=0;
        end
        
elseif(teta>(4*pi)/3 && teta<(5*pi)/3) %SEKTOR 5
    Ta = Ts*ma*sin((5*pi)/3-teta);
    Tb = Ts*ma*sin(teta-(4*pi)/3);
    To = Ts-Ta-Tb;
        if(tr < Ta)
            S4=1; S6=1; S5=1;
            S1=0; S3=0; S2=0;
        end
        if(tr > Ta && tr < Ta + Tb)
            S1=1; S6=1; S5=1;
            S4=0; S3=0; S2=0;
        end
        if(tr > Ta + Tb && tr < Ta + Tb + To)
            S1=1; S3=1; S5=1;
            S4=0; S6=0; S2=0;
        end
        
elseif(teta>(5*pi)/3 && teta<2*pi) %SEKTOR 6
    Ta = Ts*ma*sin((6*pi)/3-teta);
    Tb = Ts*ma*sin(teta-(5*pi)/3);
    To = Ts-Ta-Tb;
        if(tr < Ta)
            S1=1; S6=1; S5=1;
            S4=0; S3=0; S2=0;
        end
        if(tr > Ta && tr < Ta + Tb)
            S1=1; S6=1; S2=1;
            S4=0; S3=0; S5=0;
        end
        if(tr > Ta + Tb && tr < Ta + Tb + To)
            S1=1; S3=1; S5=1;
            S4=0; S6=0; S2=0;
        end
end