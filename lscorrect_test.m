% Load test data 
clearvars
load './data/lscorrect.mat' % Load test data
subplot(1, 2, 1);
imshow(P); % Plot the original image
title('Before Image');
ph = P - lscorrect(P); % Linear gradient correction
BW = imbinarize(ph, 1); 
subplot(1, 2, 2);
imshow(BW); % Plot the processed image
title('After Image');
