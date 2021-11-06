function [D] = bhattacharyya(X,Y)
% Bhattacharyya distance between two Gaussian data:
% [D] = bhattacharyya(X,Y) returns the Bhattacharyya distance between X and Y.
%
% Inputs: 
% X and Y are n x m matrices represent two sets which have n samples and m
% variables.
%
% Output: 
% [D] is the Bhattacharyya distance between these two sets of data.
%
% Reference:
% Kailath, T., The Divergence and Bhattacharyya Distance Measures in Signal
% Selection, IEEE Trasnactions on Communication Technology, Vol. 15, No. 1,
% pp. 52-60, 1967
%
% By Yi Cao at Cranfield University on 8th Feb 2008.
%
% Check inputs and output:
narginchk(2,2);  %  me: argoman number exactly 2 for function
nargoutchk(0,1);  % me:  number of output ( 0 or 1)

[~,m]=size(X);
% check dimension 
% assert(isequal(size(Y),[n m]),'Dimension of X and Y mismatch.');
assert(size(Y,2)==m,'Dimension of X and Y mismatch.');

mu1=mean(X);
C1=cov(X);
mu2=mean(Y);
C2=cov(Y);
C=(C1+C2)/2;
dmu=(mu1-mu2)/chol(C);
try
    [D] = 0.125*dmu*dmu'+0.5*log(det(C/chol(C1*C2)));
catch
    [D] = 0.125*dmu*dmu'+0.5*log(abs(det(C/sqrtm(C1*C2))));
    warning('MATLAB:divideByZero','Data are almost linear dependent. The results may not be accurate.');
end
