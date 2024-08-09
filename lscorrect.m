function [P00] =lscorrect (P)  
%% This is the code we want to convert to C++, and to run it inside a C++ program (e.g. on Mac or Linux  PC. Ideally we would like to have a CMakeLists.txt for cross-platform compilation)

%% This function calculates the linear surface for the image 
%% Can be used to correct the tilited surface of the image by subtracting P00 from the image.

[M , N] = size(P);

xg = meshgrid(1:N,1:M);
yg = meshgrid(1:M,1:N)';
            
sf = fit([xg(:), yg(:)],P(:),'poly11');  % This is the Matlab function that we are unable to convert. How can we convert this to C++? 
    
P00 = sf.p00+sf.p10*xg+sf.p01*yg;
    
end