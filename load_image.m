function img = load_image(num)
% num is the num of image with 
num=2;
prefix = '/Users/nihithamalayarukil/Downloads/IAUAV2021/SAMPLE_ALGO/ALL_IMAGES/img_in/';
suffix = '.jpg';
path = [prefix,num2str(num),suffix];

img = imread(path);