I=imread('forest1','png');
I=double(I);
I=I/255;
DarkChannel=GetDarkChannel(I);
A=GetA(DarkChannel,I);
T1=GetTransmission(DarkChannel,A);
T=Smoonth(I,T1);
I2=Recovery(I,T,A);
figure;
imshow(I);
figure;
imshow(I2);