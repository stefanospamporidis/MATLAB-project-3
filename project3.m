fs=100;
Ts=1/fs;
n=0:Ts:1;
x=4*cos(6*pi*n);

[Lmin1,Lmax1,d,y,e]=quantizer(x,7);
z1 = coder(y,d);
subplot(221);plot(n,y);
subplot(222);plot(n,e);
[Lmin2,Lmax2,d,y,e]=quantizer(x,8);
z2 = coder(y,d);
subplot(223);plot(n,y);
subplot(224);plot(n,e);