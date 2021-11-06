function [MSCC] = mac(V1,V2)
%
% Type: [MSCC] = mac(V1,V2);
%
% Inputs:
%
% V1   := ndof x nm1 set of eigenvectors
% V2   := ndof x nm2 set of eigenvectors
%
% Outputs:
%
% MSCC := nm1 x nm2 MAC or MSCC matrix
%
% Calculate the Modal Assurance Criterion (MAC) also
% known as the Mode Shape Correlation Coefficient (MSCC) associated
% with the two sets of eigenvectors V1 and V2.

% Modified by Scot McNeill, Spring 2013
%
[nr1,nc1]=size(V1);
[nr2,nc2]=size(V2);
%
V12=V1'*V2;
%V12=V12.^2;
V12=V12.*conj(V12);
%
V11=diag(V1'*V1);
V22=diag(V2'*V2); 
%
MSCC=zeros(nc1,nc2);
for j=1:nc2
 for i=1:nc1
  MSCC(i,j)=V12(i,j)/ (V11(i)*V22(j));
 end
end
%
%%