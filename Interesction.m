%���ݸ�����e��p��������㽻�㡢����Բ�뾶������Բ�ġ�d1��d2��Ϣ

function [moreY1,lessY1,moreY2,lessY2,O,radius,lamda,dis]=Interesction(ex,ey,p) 

syms x y;
    e=[ex,ey];
    dis=sqrt((p(:,1)-e(1)).^2+(p(:,2)-e(2)).^2);  %��������p���e��ľ���
    %vp=20;ve=25;
    lamda=0.4;    %����lamda
    radius=lamda*dis/(1-lamda*lamda)+200;  %�������а��������˹Բ�İ뾶
    O=[(p(:,1)-lamda*lamda*e(1))/(1-lamda*lamda),(p(:,2)-lamda*lamda*e(2))/(1-lamda*lamda)];    %�������а��������˹Բ��Բ��
    s=solve((x-O(1,1))^2/radius(1)^2+(y-O(1,2))^2/radius(1)^2==1,x==10000,x,y);
    moreY1=max(double(s.y));
    lessY1=min(double(s.y));
    s=solve((x-O(2,1))^2/radius(2)^2+(y-O(2,2))^2/radius(2)^2==1,x==10000,x,y);
    moreY2=max(double(s.y));
    lessY2=min(double(s.y));

        
end