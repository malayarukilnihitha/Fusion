function lab = rgb_to_lab(rgb)
lab = colorspace('Lab<-RGB',rgb);
% cform = makecform('srgb2lab');
% lab = applycform(rgb,cform);

