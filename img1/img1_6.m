clear;

mizoari=imread('mizoari.jpg');
mizonasi=imread('mizonasi.jpg');

ari_g=0.3*mizoari(:,:,1) + 0.59*mizoari(:,:,2) + 0.11*mizoari(:,:,3);
nasi_g=0.3*mizonasi(:,:,1) + 0.59*mizonasi(:,:,2) + 0.11*mizonasi(:,:,3);

ari_g16=int16(ari_g);
nasi_g16=int16(nasi_g);

Y=abs(ari_g16-nasi_g16);

Y=uint8(Y);

imshow(Y);