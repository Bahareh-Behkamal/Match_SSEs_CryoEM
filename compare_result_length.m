clear all;
clc;
pdb=importdata('1flp.pdb');  % online: PDBStruct = getpdb(PDBid)
HelixNumber=numel(pdb.Helix);  % number of helices in each pdb
AtomNumber=numel(pdb.Model.Atom);  % number of atoms in each pdb
stat_residue=[pdb.Helix.initSeqNum];  %array of all stat residue
end_residue=[pdb.Helix.endSeqNum];    %array of all end residue
lenght_helices=[pdb.Helix.length];   %array of all lenght helices
resSeq=[pdb.Model.Atom.resSeq]; % Residue in Atom number
c=1;
Matrix=zeros(HelixNumber,6);  % start+end voxel
cc=1;
for i=1:HelixNumber
    s=stat_residue(i)
    e=end_residue(i)
    
    for j=1:AtomNumber
        sw=0;
        if ((pdb.Model.Atom(j).resSeq)==s) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
            
%             disp('start coordinate:')
%             disp(pdb.Model.Atom(j).X);
%             disp(pdb.Model.Atom(j).Y);
%             disp(pdb.Model.Atom(j).Z);
            s_e_coordinate(1)=pdb.Model.Atom(j).X;
            s_e_coordinate(2)=pdb.Model.Atom(j).Y;
            s_e_coordinate(3)=pdb.Model.Atom(j).Z;
            
        end
        
        if ((pdb.Model.Atom(j).resSeq)==e) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
            sw=1;
            %disp('end coordinate:')
            %disp(pdb.Model.Atom(j).X);
            %disp(pdb.Model.Atom(j).Y);
            %disp(pdb.Model.Atom(j).Z);
            s_e_coordinate(4)=pdb.Model.Atom(j).X;
            s_e_coordinate(5)=pdb.Model.Atom(j).Y;
            s_e_coordinate(6)=pdb.Model.Atom(j).Z;
            disp(s_e_coordinate)
            
        end
        if sw==1
            Matrix(cc,:)=s_e_coordinate; % matrix for all start-end coordinate
            cc=cc+1;
        end
    end
    
end

% calculate all voxel for each helix and store in struct

for i=1:HelixNumber
    m= Matrix(i,1);
    n= Matrix(i,2);
    o= Matrix(i,3);
    c=lenght_helices(i);
    k=1;
    l=0;  % counter for lenght of each helix
    next=0;
    flag =1;
    while (flag)
        for j=1:AtomNumber
            if ((pdb.Model.Atom(j).X==m) && (pdb.Model.Atom(j).Y==n) && (pdb.Model.Atom(j).Z==o))
                helix_matrix(k,1)=pdb.Model.Atom(j).X;
                helix_matrix(k,2)=pdb.Model.Atom(j).Y;
                helix_matrix(k,3)=pdb.Model.Atom(j).Z;
                k=k+1;
                next=stat_residue(i)+1;
                l=l+1;
            end  % only one itteration  (start voxel of each helix)
            
            if ((pdb.Model.Atom(j).resSeq)==next) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
                
                helix_matrix(k,1)=pdb.Model.Atom(j).X;
                helix_matrix(k,2)=pdb.Model.Atom(j).Y;
                helix_matrix(k,3)=pdb.Model.Atom(j).Z;
                k=k+1;
                next=next+1;
                l=l+1;
                
            end
            
            if (l==c)
                result(i).Mat = helix_matrix;
                helix_matrix = [];
                %h1 =[helix_matrix];
                flag = 0;
                break;
            end % end if
        end % end for j=1:AtomNumber
        
    end % end while 1
    
end % end for i=1:HelixNumber

sort_lenght_helix=sort(lenght_helices)
T_sort_lenght_helix=sort_lenght_helix'

% ***********************   stick-extract-data   ****************

filename='1flp-stick2.csv'
d = xlsread(filename);
d = d (2:end,:);  % delete raw one
numberStick = unique (d(:,4)); % array of index
cnt1 =1;
n=size(d,1); % number of all rows
m=size(numberStick);  % number of indexes
for j=1:m
    value=numberStick(j); % select each #index
    k=1;
    for i =1:n
        if (d(i,4)==value)
            stick_Matrix(k,:)=d(i,1:3);
            k=k+1;
        end
    end
    result(j).Mat = stick_Matrix;
    stick_Matrix = [];
end

disp(result);  % struct for all coordinate

%calculate the start and end voxel of each helix
p=1;
for i=1:m % number of indexes
    helix_mat=[result(i).Mat];
    s=size(helix_mat,1);
    start_coordinate(p,:)=helix_mat(1,:); % a matrix for star voxel
    end_coordinate(p,:)=helix_mat(s,:);  % a matrix for end voxel
    p=p+1;
end

% extract the lenght of each stick

filename='1flp_lenght_helixtracer.csv';
lenght_stick = xlsread(filename);


% calculate the lenght of each stick (Suppose each vector) |AB|
for s=1:m
    
    Xa=start_coordinate(s,1);
    Ya=start_coordinate(s,2);
    Za=start_coordinate(s,3);
    
    Xb=end_coordinate(s,1);
    Yb=end_coordinate(s,2);
    Zb=end_coordinate(s,3);
    
    v=(Xa-Xb)^2+(Ya-Yb)^2+(Za-Zb)^2;
    
    value=sqrt(v);  % andaze vector
    
    quantity(s,1)=value;      
    
end



for s=1:m   % for all stick
    q=quantity(s,1);  %  each vector quantity  (|AB|)
    p=lenght_stick(s,2);  %  each stick lenght
    dif=p-q;
    differ=abs(dif);
    differences(s,1)=differ;   % difference between Angestrom lenght and |AB|
    
end

sort_quantity_stick=sort(quantity);
sort_lenght_stick=sort(lenght_stick(:,2));

% ***************** Define cell for compare result  ***************
%cell_compare = [];

cell_compare = {'sort_quantity_stick','sort_lenght_stick','sort_lenght_helix'};
xlswrite('compare_lenght',cell_compare);

for i=1:size(quantity)
    cell_compare{i,1}= sort_quantity_stick(i);
end

for j=1:size(lenght_stick)
    cell_compare{j,2}= sort_lenght_stick(j);
end

for k=1:size(T_sort_lenght_helix)
   cell_compare{k,3}= T_sort_lenght_helix(k);
end

xlswrite('compare_lenght',cell_compare)


%  calculate angle or corner

% 
% 
% 
