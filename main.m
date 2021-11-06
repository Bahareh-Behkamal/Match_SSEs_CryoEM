


% ********************** Written by Bahareh Behkamal **********************

clear all;
clc;
close all;

% *************************************************************************

% ***********************  Extract Helix Information **********************

% *************************************************************************



% (Protein ID)PDB-ID:

%(1)1BZ4, (2)1FLP, (3)2Y4Z, (4)1NG6, (5)1HG5, (6)3HBE, (7)1P5X, (8)2XB5 
%(9)1ICX, (10)1XQO, (11)3LTJ, (12)3ACW, (13)3HJL, (14)3ODS, (15)2XVV,
%(16)3FIN, (17)6EM3, (18)5UZB, (19)6F36, (20)3C91  (21)5I1M, (22)4CHV
%(23)5O8O, (24)6UXW, (25)5KBU


Protein_ID=1;    % INSERT THE NUMBER OF PROTEIN HERE (Example: For 1BZ4 Protein_ID=1)


number_of_proteins=25;
switch(Protein_ID)
    
    
    case 1     % #Helices=5     #Sticks=5
        protein_data(Protein_ID).name='model-1bz4.pdb';
        protein_data(Protein_ID).stick_hlces='1BZ4_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='1BZ4_Topology_hlces.csv';
        protein_data(Protein_ID).aminoacide=144;
        helix_info=1;
        sheet_info=0;
        
    case 2    % #Helices=7   #Sticks=7
        protein_data(Protein_ID).name='model-1flp.pdb';
        protein_data(Protein_ID).stick_hlces='1FLP_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='1FLP_Topology_helices.csv';
        protein_data(Protein_ID).aminoacide=142;
        helix_info=1;
        sheet_info=0;
        
    case 3  % #Helices=6   #Strands=2  #Stick-Helices=6   #Stick-Strands=2
        protein_data(Protein_ID).name='model-2y4z.pdb';
        protein_data(Protein_ID).stick_hlces='2Y4Z_stick_hlces.csv';
        protein_data(Protein_ID).stick_strands='2Y4Z_stick_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='2Y4Z_Topology_hlces.csv';
        protein_data(Protein_ID).topology_strands='2Y4Z_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=140;
        helix_info=1;
        sheet_info=1;
        
    case 4     % #Helices=9   #Sticks=7
        protein_data(Protein_ID).name='model-1ng6.pdb';
        protein_data(Protein_ID).stick_hlces='1NG6_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='1NG6_Topology_helices.csv'
        protein_data(Protein_ID).aminoacide=148;
        helix_info=1;
        sheet_info=0;
        
    case 5      % #Helices=11     #Sticks=9
        
        protein_data(Protein_ID).name='model-1hg5.pdb';
        protein_data(Protein_ID).stick_hlces='1HG5_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'
        protein_data(Protein_ID).topology_hlces='1HG5_Topology_hlces.csv'
        protein_data(Protein_ID).aminoacide=289;
        helix_info=1;
        sheet_info=0;
        
    case 6    % #Helices=11   #Sticks=7
        
        protein_data(Protein_ID).name='model-3hbe.pdb';
        protein_data(Protein_ID).stick_hlces='3HBE_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'    % chain='X'
        protein_data(Protein_ID).topology_hlces='3HBE_Topology_hlces.csv';
        protein_data(Protein_ID).aminoacide=204;
        helix_info=1;
        sheet_info=0;
        
    case 7      % #Helices=13   #Sticks=9
        
        protein_data(Protein_ID).name='model-1p5x.pdb';
        protein_data(Protein_ID).stick_hlces='1P5X_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'
        protein_data(Protein_ID).topology_hlces='1P5X_Topology_hlces.csv';
        protein_data(Protein_ID).aminoacide=245;
        helix_info=1;
        sheet_info=0;
        
        
    case 8      % #Helices=13     #Sticks=9
        protein_data(Protein_ID).name='model-2xb5.pdb';
        protein_data(Protein_ID).stick_hlces='2XB5_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='2XB5_Topology_helices.csv';
        protein_data(Protein_ID).aminoacide=207;
        helix_info=1;
        sheet_info=0;
        
    case 9    % #Helices=6    #Strands=7  #Stick-Helices=4   #Stick-Strands=7
        protein_data(Protein_ID).name='model-1icx.pdb';
        protein_data(Protein_ID).stick_hlces='1ICX_stick_hlces.csv';
        protein_data(Protein_ID).stick_strands='1ICX_stick_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='1ICX_Topology_hlces.csv';
        protein_data(Protein_ID).topology_strands='1ICX_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=155;
        helix_info=1;
        sheet_info=1;
        
    case 10    % #Helices=14   #Sticks=14
        
        protein_data(Protein_ID).name='model-1xqo.pdb';
        protein_data(Protein_ID).stick_hlces='1XQO_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'
        protein_data(Protein_ID).topology_hlces='1XQO_Topology_hlces.csv';
        protein_data(Protein_ID).aminoacide=256;
        helix_info=1;
        sheet_info=0;
        
    case 11      % #Helices=16   #Sticks=12
        protein_data(Protein_ID).name='model-3ltj.pdb';
        protein_data(Protein_ID).stick_hlces='3LTJ_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'
        protein_data(Protein_ID).topology_hlces='3LTJ_Topology_hlces.csv'
        protein_data(Protein_ID).aminoacide=201;
        helix_info=1;
        sheet_info=0;
        
    case 12      % #Helices=17     #Sticks=14
        protein_data(Protein_ID).name='model-3acw.pdb';
        protein_data(Protein_ID).stick_hlces='3ACW_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='3ACW_Topology_helices.csv';
        protein_data(Protein_ID).aminoacide=293;
        helix_info=1;
        sheet_info=0;
        
    case 13       % #Helices=20     #Sticks=20
        protein_data(Protein_ID).name='model-3hjl.pdb';
        protein_data(Protein_ID).stick_hlces='3HJL_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='3HJL_Topology_hlces.csv';
        protein_data(Protein_ID).aminoacide=329;
        helix_info=1;
        sheet_info=0;
        
        
    case 14       % #Helices=21     #Sticks=16
        protein_data(Protein_ID).name='model-3ods.pdb';
        protein_data(Protein_ID).stick_hlces='3ODS_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='3ODS_Topology_helices.csv';
        protein_data(Protein_ID).aminoacide=415;
        helix_info=1;
        sheet_info=0;
        
        
        
    case 15   % #Helices=33 #Sticks=19
        
        protein_data(Protein_ID).name='model-2xvv.pdb';
        protein_data(Protein_ID).stick_hlces='2XVV_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'
        protein_data(Protein_ID).topology_hlces='2XVV_Topology_hlces.csv'
        protein_data(Protein_ID).aminoacide=585;
        helix_info=1;
        sheet_info=0;
        
% ************************* Experimental Data *****************************
        
        
    case 16    % #Helices=4   #Strands=3  #Stick-Helices=4   #Stick-Strands=3
        protein_data(Protein_ID).name='model-3fin.pdb';
        protein_data(Protein_ID).stick_hlces='3FIN_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='3FIN_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';       % chain='R'
        protein_data(Protein_ID).topology_hlces='3FIN_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='3FIN_Topology_strands.csv'
        protein_data(Protein_ID).aminoacide=117;
        helix_info=1;
        sheet_info=1;
        
    case 17    % #Helices=3   #Strands=8  #Stick-Helices=3   #Stick-Strands=6
        protein_data(Protein_ID).name='model-6em3.pdb';
        protein_data(Protein_ID).stick_hlces='6EM3_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='6EM3_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='6EM3_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='6EM3_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=291;
        helix_info=1;
        sheet_info=1;
        
    case 18     % #Helices=9   #Strands=4  #Stick-Helices=6   #Stick-Strands=3
        protein_data(Protein_ID).name='model-5uzb.pdb';
        protein_data(Protein_ID).stick_hlces='5UZB_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='5UZB_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='5UZB_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='5UZB_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=177;
        helix_info=1;
        sheet_info=0;   % problem in sheet
        
        
    case 19     % #Helices=13     #Sticks=11
        protein_data(Protein_ID).name='model-6f36.pdb';
        protein_data(Protein_ID).stick_hlces='6F36_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'   %chain='M'
        protein_data(Protein_ID).topology_hlces='6F36_Topology_hlces.csv'
        protein_data(Protein_ID).aminoacide=327;
        helix_info=1;
        sheet_info=0;
        
    case 20    % #Helices=8   #Strands=10  #Stick-Helices=6   #Stick-Strands=9
        protein_data(Protein_ID).name='model-3c91.pdb';
        protein_data(Protein_ID).stick_hlces='3C91_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='3C91_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='3C91_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='3C91_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=233;
        helix_info=1;
        sheet_info=1;
        
    case 21     % #Helices=19     #Sticks=17
        protein_data(Protein_ID).name='model-5i1m.pdb';
        protein_data(Protein_ID).stick_hlces='5I1M_Stick_hlces.csv';
        protein_data(Protein_ID).chain='A'  %chain='V'
        protein_data(Protein_ID).topology_hlces='5I1M_Topology_hlces.csv'
        protein_data(Protein_ID).aminoacide=458;
        helix_info=1;
        sheet_info=0;
        
    case 22     % #Helices=15   #Strands=8  #Stick-Helices=15   #Stick-Strands=7
        protein_data(Protein_ID).name='model-4chv.pdb';
        protein_data(Protein_ID).stick_hlces='4CHV_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='4CHV_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='4CHV_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='4CHV_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=361;
        helix_info=1;
        sheet_info=0; % problem in sheet
        
        
    case 23    %#Helices=3   #Strands=21  #Stick-Helices=3   #Stick-Strands=19
        protein_data(Protein_ID).name='model-5O8O.pdb';
        protein_data(Protein_ID).stick_hlces='5O8O_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='5O8O_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='5O8O_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='5O8O_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=349;
        helix_info=1;
        sheet_info=1;
        
    case 24   %%#Helices=33   #Strands=10  #Stick-Helices=27   #Stick_Strands=8
        protein_data(Protein_ID).name='model-6uxw.pdb';
        protein_data(Protein_ID).stick_hlces='6UXW_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='6UXW_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='6UXW_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='6UXW_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=1703;
        helix_info=1;
        sheet_info=1;
        
        
    case 25     %#Helices=33   #Strands=32  #Stick-Helices=28   #Stick_Strands=26
        protein_data(Protein_ID).name='model-5kbu.pdb';
        protein_data(Protein_ID).stick_hlces='5KBU_sticks_hlces.csv';
        protein_data(Protein_ID).stick_strands='5KBU_sticks_strands.csv';
        protein_data(Protein_ID).chain='A';
        protein_data(Protein_ID).topology_hlces='5KBU_Topology_helices.csv';
        protein_data(Protein_ID).topology_strands='5KBU_Topology_strands.csv';
        protein_data(Protein_ID).aminoacide=1034;
        helix_info=1;
        sheet_info=1;
               
        
end




if helix_info==1
    
    %%  ***************   Pre processing step *******************
    
    % ***********************************************************
    
    % *******************  Extract Stick Information *************
    
    % ***********************************************************
    
    filename=protein_data(Protein_ID).stick_hlces;   %(SSETracer)
    d = csvread(filename);
    numberStick = unique (d(:,4)); % array of index
    cnt1 =1;
    n=size(d,1); % number of all rows
    stick_number=size(numberStick);  % number of indexes
    stick_number=stick_number(1);
    
    for j=1:stick_number
        value=numberStick(j); % select each #index
        k=1;
        for i =1:n
            if (d(i,4)==value)
                stick_Matrix(k,:)=d(i,1:3);
                k=k+1;
            end
        end
        result_stick(j).Mat = stick_Matrix;
        stick_Matrix = [];
    end
    
    disp(result_stick);  % struct for all coordinate
    
    %%
    
    pdb=importdata(protein_data(Protein_ID).name);  % online: PDBStruct = getpdb(PDBid)
    number_all_helix=numel(pdb.Helix);  % number of helices in each pdb
    AtomNumber=numel(pdb.Model.Atom);  % number of atoms in each pdb
    start_residue_chain=[pdb.Helix.initSeqNum];  %array of all stat residue
    end_residue_chain=[pdb.Helix.endSeqNum];    %array of all end residue
    length_helices=[pdb.Helix.length];   %array of all length helices
    resSeq=[pdb.Model.Atom.resSeq]; % Residue in Atom number
    
    % Extract some data for all helices in chain before reducing
    k=1;
    helix_number=0;
    start_residue_chain=0;
    end_residue_chain=0;
    for i=1:number_all_helix
        if pdb.Helix(i).initChainID==protein_data(Protein_ID).chain
            helix_number=helix_number+1;
            length_chain(k)=pdb.Helix(i).length;
            start_residue_chain(k)=pdb.Helix(i).initSeqNum;
            end_residue_chain(k)=pdb.Helix(i).endSeqNum;
            k=k+1;
        end
    end
    
    % start equal cardinality process
    
    different_length=number_all_helix-stick_number
    
    for i=1:number_all_helix
        helix_data(i).length=length_chain(i)
        helix_data(i).start=start_residue_chain(i)
        helix_data(i).end=end_residue_chain(i)
    end
    
    
    for i=1:different_length
        min=100;
        for i=1:number_all_helix
            if helix_data(i).length<min
                min=helix_data(i).length;
                index=i;
            end
        end
        
        helix_data(index).length=1000
    end
    
    j=1;
    k=1;
    remove_helix_index=0;
    for i=1:number_all_helix
        if helix_data(i).length < 1000
            
            new_length_helix(j)=helix_data(i).length
            new_start_residue(j) =helix_data(i).start
            new_end_residue(j) =helix_data(i).end
            j=j+1;
        end
        if helix_data(i).length == 1000
            remove_helix_index(k)=i
            k=k+1;
        end
    end
    
    
    
    helix_number=number_all_helix-different_length;
    
    c=1;
    Matrix=zeros(helix_number,6);  % start+end voxel (6 items)
    cc=1;
    for i=1:helix_number
        s=new_start_residue(i);
        e=new_end_residue(i);
        
        for j=1:AtomNumber
            sw=0;
            if ((pdb.Model.Atom(j).resSeq)==s) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
                
                s_e_coordinate(1)=pdb.Model.Atom(j).X;
                s_e_coordinate(2)=pdb.Model.Atom(j).Y;
                s_e_coordinate(3)=pdb.Model.Atom(j).Z;
                
            end
            
            if ((pdb.Model.Atom(j).resSeq)==e) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
                sw=1;
                
                s_e_coordinate(4)=pdb.Model.Atom(j).X;
                s_e_coordinate(5)=pdb.Model.Atom(j).Y;
                s_e_coordinate(6)=pdb.Model.Atom(j).Z;
                
            end
            if sw==1
                Matrix(cc,:)=s_e_coordinate; % matrix for all start-end coordinate
                cc=cc+1;
            end
        end
        
    end
    
    % calculate all voxel for each helix and store in struct
    
    for i=1:helix_number
        m= Matrix(i,1);
        n= Matrix(i,2);
        o= Matrix(i,3);
        c=new_length_helix(i);
        k=1;
        l=0;  % counter for length of each helix
        next=0;
        flag =1;
        while (flag)
            for j=1:AtomNumber
                if ((pdb.Model.Atom(j).X==m) && (pdb.Model.Atom(j).Y==n) && (pdb.Model.Atom(j).Z==o))
                    helix_matrix(k,1)=pdb.Model.Atom(j).X;
                    helix_matrix(k,2)=pdb.Model.Atom(j).Y;
                    helix_matrix(k,3)=pdb.Model.Atom(j).Z;
                    k=k+1;
                    next=new_start_residue(i)+1;
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
                    result_helix(i).Mat = helix_matrix;
                    helix_matrix = [];
                    %h1 =[helix_matrix];
                    flag = 0;
                    break;
                end % end if
            end % end for j=1:AtomNumber
            
        end % end while 1
        
    end % end for i=1:HelixNumber
    
    
    
    %  *************** End Pre-processing step *******************
    
    
    
    
    %%
    
    tic;
    
    % ***********************************************************
    %calculate the start and end voxel of all helices and sticks
    % ***********************************************************
    
    %calculate the start and end voxel of each helix
    p=1;
    for i=1:helix_number  % number of helix
        helix_mat_pdb=[result_helix(i).Mat];
        s=size(helix_mat_pdb,1);
        start_coordinate_helix(p,:)=helix_mat_pdb(1,:); % a matrix for star voxel
        end_coordinate_helix(p,:)=helix_mat_pdb(s,:);  % a matrix for end voxel
        p=p+1;
    end
    
    % extract start and end, then store in n*6 array
    
    for i=1:helix_number
        for j=1:3
            start_end_matrix_helix(i,j)=start_coordinate_helix(i,j);
            start_end_matrix_helix(i,j+3)=end_coordinate_helix(i,j);
        end
    end
    
    % extract x(start,end) ,y(start,end), z(start,end)for all helix
    for i=1:helix_number
        x_s_e_coordinate_helix(i,:)=[start_end_matrix_helix(i,1),start_end_matrix_helix(i,4)]
        y_s_e_coordinate_helix(i,:)=[start_end_matrix_helix(i,2),start_end_matrix_helix(i,5)]
        z_s_e_coordinate_helix(i,:)=[start_end_matrix_helix(i,3),start_end_matrix_helix(i,6)]
    end
    
    %  **************  for sticks ******************
    
    %calculate the start and end voxel of each stick
    p=1;
    for i=1:stick_number % number of indexes
        stick_mat=[result_stick(i).Mat];
        s=size(stick_mat,1);
        start_coordinate_stick(p,:)=stick_mat(1,:); % a matrix for star voxel
        end_coordinate_stick(p,:)=stick_mat(s,:);  % a matrix for end voxel
        p=p+1;
    end
    
    % extract start and end then store in n*6 array
    
    for i=1:stick_number
        for j=1:3
            start_end_matrix_stick(i,j)=start_coordinate_stick(i,j);
            start_end_matrix_stick(i,j+3)=end_coordinate_stick(i,j);
        end
    end
    
    % extract x(start,end) ,y(start,end), z(start,end)for all stick
    for i=1:stick_number
        x_s_e_coordinate_stick(i,:)=[start_end_matrix_stick(i,1),start_end_matrix_stick(i,4)]
        y_s_e_coordinate_stick(i,:)=[start_end_matrix_stick(i,2),start_end_matrix_stick(i,5)]
        z_s_e_coordinate_stick(i,:)=[start_end_matrix_stick(i,3),start_end_matrix_stick(i,6)]
    end
    
    
    
    %%
    %**********************************************************************
    
    % ******************** Extract the length   ***************************
    
    %**********************************************************************
    
    % calculate the length of each helix (Suppose each vector) |AB|
    
    for s=1:helix_number   % For all helix
        
        Xa=start_coordinate_helix(s,1);
        Ya=start_coordinate_helix(s,2);
        Za=start_coordinate_helix(s,3);
        
        Xb=end_coordinate_helix(s,1);
        Yb=end_coordinate_helix(s,2);
        Zb=end_coordinate_helix(s,3);
        
        v=(Xa-Xb)^2+(Ya-Yb)^2+(Za-Zb)^2;
        
        value=sqrt(v);  % magnitude of helix vector
        
        % R_value=round(value);
        R_value=value;
        quantity_helix(s).index=s;
        quantity_helix(s).length=R_value;
        
    end
    
    % calculate the length of each stick (Suppose each vector) |AB|
    for s=1:stick_number     % for all stick
        
        Xa=start_coordinate_stick(s,1);
        Ya=start_coordinate_stick(s,2);
        Za=start_coordinate_stick(s,3);
        
        Xb=end_coordinate_stick(s,1);
        Yb=end_coordinate_stick(s,2);
        Zb=end_coordinate_stick(s,3);
        
        v=(Xa-Xb)^2+(Ya-Yb)^2+(Za-Zb)^2;
        
        value=sqrt(v);  % magnitude of stick vector
        R_value=round(value);
        quantity_stick(s).index=s;
        quantity_stick(s).length=R_value;
        
        
    end
    
    
    
    %% First Feature: Angle
    
    %***************************************************************
    
    % ********************* Compute Angle  ************************
    
    %***************************************************************
    
    % Move each Helix vector to start from (0,0,0) point
    
    for i=1:helix_number % number of helix
        j=1;
        x1=start_coordinate_helix(i,j);
        y1=start_coordinate_helix(i,j+1);
        z1=start_coordinate_helix(i,j+2);
        
        x2= end_coordinate_helix(i,j);
        y2= end_coordinate_helix(i,j+1);
        z2= end_coordinate_helix(i,j+2);
        
        u_x=x2-x1;
        u_y=y2-y1;
        u_z=z2-z1;
        
        j=1;
        end_vector_helix(i,j)=u_x;
        end_vector_helix(i,j+1)=u_y;
        end_vector_helix(i,j+2)=u_z;
    end
    
    % Move each stick vector to start from (0,0,0) point
    
    for i=1:stick_number % number of stick
        j=1;
        x1=start_coordinate_stick(i,j);
        y1=start_coordinate_stick(i,j+1);
        z1=start_coordinate_stick(i,j+2);
        
        x2=end_coordinate_stick(i,j);
        y2=end_coordinate_stick(i,j+1);
        z2=end_coordinate_stick(i,j+2);
        
        v_x=x2-x1;
        v_y=y2-y1;
        v_z=z2-z1;
        
        j=1;
        end_vector_stick(i,j)=v_x;
        end_vector_stick(i,j+1)=v_y;
        end_vector_stick(i,j+2)=v_z;
    end
    
    % compute the angle of each helix with others
    for i=1:helix_number
        u=end_vector_helix(i,:);
        
        for j=1:helix_number
            v=end_vector_helix(j,:);
            ThetaInDegrees = atan2d(norm(cross(u,v)),dot(u,v))
            %theta_radian=acos((u*v')/(norm(u)*norm(v)));
            %theta_degree=rad2deg(double(theta_radian));
            angle_helix(i,j)= ThetaInDegrees;
            mix_feature_helix(i,j).angle= ThetaInDegrees;
            
            
        end
    end
    
    % compute the angle of each stick with others
    
    for i=1:stick_number
        u=end_vector_stick(i,:);
        
        for j=1:stick_number
            v=end_vector_stick(j,:);
            ThetaInDegrees = atan2d(norm(cross(u,v)),dot(u,v))
            % theta_radian=acos((u*v')/(norm(u)*norm(v)));
            % theta_degree=rad2deg(theta_radian);
            angle_stick(i,j)=ThetaInDegrees;
            mix_feature_stick(i,j).angle=ThetaInDegrees;
            
            
        end
    end
    
    %% Second Feature: Euclidean Distance
    
    %***************************************************************
    
    % ************** Compute Euclidean Distance  *******************
    
    %***************************************************************
    
    % compute the Euclidean distance for helix matrix
    
    
    for i=1:helix_number
        
        x1_middle=(start_end_matrix_helix(i,1)+start_end_matrix_helix(i,4))/2;
        y1_middle=(start_end_matrix_helix(i,2)+start_end_matrix_helix(i,5))/2;
        z1_middle=(start_end_matrix_helix(i,3)+start_end_matrix_helix(i,6))/2;
        
        for j=1:helix_number
            x2_middle=(start_end_matrix_helix(j,1)+start_end_matrix_helix(j,4))/2;
            y2_middle=(start_end_matrix_helix(j,2)+start_end_matrix_helix(j,5))/2;
            z2_middle=(start_end_matrix_helix(j,3)+start_end_matrix_helix(j,6))/2;
            euclidean_distance_helix(i,j)=sqrt((x1_middle-x2_middle)^2+(y1_middle-y2_middle)^2+(z1_middle-z2_middle)^2);
        end
    end
    
    
    for i=1:stick_number
        
        x1_middle=(start_end_matrix_stick(i,1)+start_end_matrix_stick(i,4))/2;
        y1_middle=(start_end_matrix_stick(i,2)+start_end_matrix_stick(i,5))/2;
        z1_middle=(start_end_matrix_stick(i,3)+start_end_matrix_stick(i,6))/2;
        
        for j=1:stick_number
            x2_middle=(start_end_matrix_stick(j,1)+start_end_matrix_stick(j,4))/2;
            y2_middle=(start_end_matrix_stick(j,2)+start_end_matrix_stick(j,5))/2;
            z2_middle=(start_end_matrix_stick(j,3)+start_end_matrix_stick(j,6))/2;
            euclidean_distance_stick(i,j)=sqrt((x1_middle-x2_middle)^2+(y1_middle-y2_middle)^2+(z1_middle-z2_middle)^2);
        end
    end
    
    
    %% Third Feature: Relative DeltaLength
    
    % **********************************************************************
    % ***** compute the Relative Delta length of each helix with others *****
    % **********************************************************************
    
    
    %  DeltaLength= abs(d1-d2)/d1+d2
    
    % phase1 : compute delta length
    for i=1:helix_number
        length_1= quantity_helix(i).length;
        for j=1:helix_number
            length_2= quantity_helix(j).length;
            deltaLength_helix(i,j)=(abs(length_1-length_2))/(length_1+length_2);
        end
    end
    
    % compute the Relative Delta length of each stick with others
    for i=1:stick_number
        length_1= quantity_stick(i).length;
        for j=1:stick_number
            length_2= quantity_stick(j).length;
            deltaLength_stick(i,j)=(abs(length_1-length_2))/(length_1+length_2);
        end
    end
    
    
    
    
    %*************************  Extend Index  ***************************
    
    % **************************  Angle *********************************
    
    %extend angle helix
    for i=1:1
        for j=1:helix_number+1
            extend_angle_helix(i,j)=j-1;
        end
    end
    for i=1:helix_number+1
        for j=1:1
            extend_angle_helix(i,j)=i-1;
        end
    end
    for i=2:helix_number+1
        for j=2:helix_number+1
            extend_angle_helix(i,j)=angle_helix(i-1,j-1)
        end
    end
    
    %extend angle stick
    for i=1:1
        for j=1:stick_number+1
            extend_angle_stick(i,j)=j-1;
        end
    end
    for i=1:stick_number+1
        for j=1:1
            extend_angle_stick(i,j)=i-1;
        end
    end
    for i=2:stick_number+1
        for j=2:helix_number+1
            extend_angle_stick(i,j)=angle_stick(i-1,j-1)
        end
    end
    % ************************************************************
    
    % ********************  Euclidean Distance  ******************
    
    % extend Eculidian helix
    for i=1:1
        for j=1:helix_number+1
            extend_euclidean_distance_helix(i,j)=j-1;
        end
    end
    for i=1:helix_number+1
        for j=1:1
            extend_euclidean_distance_helix(i,j)=i-1;
        end
    end
    for i=2:helix_number+1
        for j=2:helix_number+1
            extend_euclidean_distance_helix(i,j)=euclidean_distance_helix(i-1,j-1)
        end
    end
    
    
    %extend Eculidian stick
    for i=1:1
        for j=1:stick_number+1
            extend_euclidean_distance_stick(i,j)=j-1;
        end
    end
    for i=1:stick_number+1
        for j=1:1
            extend_euclidean_distance_stick(i,j)=i-1;
        end
    end
    for i=2:stick_number+1
        for j=2:stick_number+1
            extend_euclidean_distance_stick(i,j)=euclidean_distance_stick(i-1,j-1);
        end
    end
    
    % ************************************************************
    
    % ********************  Relative Delta Length  ***************
    
    %extend deltaLength helix
    for i=1:1
        for j=1:helix_number+1
            extend_deltaLength_helix(i,j)=j-1;
        end
    end
    for i=1:helix_number+1
        for j=1:1
            extend_deltaLength_helix(i,j)=i-1;
        end
    end
    for i=2:helix_number+1
        for j=2:helix_number+1
            extend_deltaLength_helix(i,j)=deltaLength_helix(i-1,j-1)
        end
    end
    
    %extend deltaLength stick
    for i=1:1
        for j=1:stick_number+1
            extend_deltaLength_stick(i,j)=j-1;
        end
    end
    for i=1:stick_number+1
        for j=1:1
            extend_deltaLength_stick(i,j)=i-1;
        end
    end
    for i=2:stick_number+1
        for j=2:stick_number+1
            extend_deltaLength_stick(i,j)=deltaLength_stick(i-1,j-1)
        end
    end
    
    %%  Compute MAC and Bhattacharya Scores
    
    %  ******************************************
    
    
    filename3=protein_data(Protein_ID).topology_hlces;
    topology_file = csvread(filename3);
    
    % create positive value for zero value for evaluation
    topology_file_vector=topology_file(:,2);
    for i=1:number_all_helix
        if topology_file_vector(i)==0  topology_file_vector(i)=number_all_helix +1;  end
    end
    
    
    
    helix_number_e=helix_number+1 ;
    stick_number_e=stick_number+1;
    
    
    % *******************  start mac **************
    
    [index_angle_mac,mac_answer_angle]=compute_angle_mac(extend_angle_helix,extend_angle_stick,helix_number_e,stick_number_e);
    [index_deltaLength_mac,mac_answer_deltaLength]=compute_deltaLength_mac(extend_deltaLength_helix,extend_deltaLength_stick,helix_number_e,stick_number_e);
    [index_Euclidean_mac,mac_answer_Euclidean]=compute_Euclidean_mac(extend_euclidean_distance_helix,extend_euclidean_distance_stick,helix_number_e,stick_number_e );
    
    
    c=1;
    for i=2:helix_number+1
        w(1,:)=mac_answer_angle(1,1:helix_number+1)
        w(i,1)=mac_answer_angle(i,1)
        w(i,2:helix_number+1)=mac_answer_angle(i,2:helix_number+1)+ mac_answer_deltaLength(i,2:helix_number+1) + mac_answer_Euclidean(i,2:helix_number+1)
        
    end
    
    
    
    % ******* adjust index for three-features with mac *******
    
    final_angle_mac=[index_angle_mac];
    final_deltaLength_mac=[index_deltaLength_mac]
    final_Euclidean_mac=[index_Euclidean_mac]
    
    % construct array from structure
    
    % for the different cardinality 
    if remove_helix_index~=0
        [final_angle_mac] = Adjust_index( index_angle_mac,helix_number,remove_helix_index )
        [final_deltaLength_mac ] = Adjust_index( index_deltaLength_mac,helix_number,remove_helix_index )
        [final_Euclidean_mac ] = Adjust_index( index_Euclidean_mac,helix_number,remove_helix_index )
        
    end
    
    % construct matrix from structure
    for i=1:number_all_helix
        final_angle_mac_matrix(i,1)=final_angle_mac(i).num_helix
        final_angle_mac_matrix(i,2) =final_angle_mac(i).num_stick
    end
    
    for i=1:number_all_helix
        final_deltaLength_mac_matrix(i,1)=final_deltaLength_mac(i).num_helix
        final_deltaLength_mac_matrix(i,2) =final_deltaLength_mac(i).num_stick
    end
    
    for i=1:number_all_helix
        final_Euclidean_mac_matrix(i,1)=final_Euclidean_mac(i).num_helix
        final_Euclidean_mac_matrix(i,2) =final_Euclidean_mac(i).num_stick
    end
    
    
    
    %  *****************   Evaluation Mac on three features (angle, deltaLength, Euclidean-d)   ***************
    
    final_angle_mac_vector=final_angle_mac_matrix(:,2);
    final_deltaLength_mac_vector=final_deltaLength_mac_matrix(:,2);
    final_Euclidean_mac_vector=final_Euclidean_mac_matrix(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_helix
        if final_angle_mac_vector(i)==0  final_angle_mac_vector(i)=number_all_helix +1;  end
        if final_deltaLength_mac_vector(i)==0  final_deltaLength_mac_vector(i)=number_all_helix +1; end
        if final_Euclidean_mac_vector(i)==0  final_Euclidean_mac_vector(i)=number_all_helix +1; end
    end
    
    
    
    [ matrix_angle_mac,unassign_angle_mac,match_angle_mac,nmiscore_angle_mac,accurateScore_angle_mac,NetFmeasure_angle_mac,sensitivity_angle_mac,precision_angle_mac,Fmeasure_angle_mac,indF_angle_mac] = evaluate(topology_file_vector,final_angle_mac_vector)
    [ matrix_deltaLength_mac,unassign_deltaLength_mac,match_deltaLength_mac,nmiscore_deltaLength_mac,accurateScore_deltaLength_mac,NetFmeasure_deltaLength_mac,sensitivity_deltaLength_mac,precision_deltaLength_mac,Fmeasure_deltaLength_mac,indF_deltaLength_mac] = evaluate(topology_file_vector,final_deltaLength_mac_vector)
    [ matrix_Euclidean_mac,unassign_Euclidean_mac,match_Euclidean_mac,nmiscore_Euclidean_mac,accurateScore_Euclidean_mac,NetFmeasure_Euclidean_mac,sensitivity_Euclidean_mac,precision_Euclidean_mac,Fmeasure_Euclidean_mac,indF_Euclidean_mac] = evaluate(topology_file_vector,final_Euclidean_mac_vector)
    
    
    %%
    
    % *************  Compute and drowing plot phase for Bhattacharyya *****************
    
    
    [index_angle_bhat,bhat_answer_angle]=compute_angle_bhattacharyya(extend_angle_helix,extend_angle_stick,helix_number_e,stick_number_e);
    [index_deltaLength_bhat,bhat_answer_deltaLength]=compute_deltaLength_bhattacharyya(extend_deltaLength_helix,extend_deltaLength_stick,helix_number_e,stick_number_e);
    [index_Euclidean_bhat,bhat_answer_Euclidean]=compute_Euclidean_bhattacharyya(extend_euclidean_distance_helix,extend_euclidean_distance_stick,helix_number_e,stick_number_e);
    
    % ******* adjust index for three-features with bhattacharyya *******************
    
    final_angle_bhat=[index_angle_bhat];
    final_deltaLength_bhat=[index_deltaLength_bhat]
    final_Euclidean_bhat=[index_Euclidean_bhat]
    
    % for the cardinality not the same
    if remove_helix_index~=0
        [final_angle_bhat ] = Adjust_index( index_angle_bhat,helix_number,remove_helix_index )
        [final_deltaLength_bhat ] = Adjust_index( index_deltaLength_bhat,helix_number,remove_helix_index )
        [final_Euclidean_bhat ] = Adjust_index( index_Euclidean_bhat,helix_number,remove_helix_index )
    end
    
    % construct matrix from structure
    for i=1:number_all_helix
        final_angle_bhat_matrix(i,1)=final_angle_bhat(i).num_helix
        final_angle_bhat_matrix(i,2) =final_angle_bhat(i).num_stick
    end
    
    for i=1:number_all_helix
        final_deltaLength_bhat_matrix(i,1)=final_deltaLength_bhat(i).num_helix
        final_deltaLength_bhat_matrix(i,2) =final_deltaLength_bhat(i).num_stick
    end
    
    for i=1:number_all_helix
        final_Euclidean_bhat_matrix(i,1)=final_Euclidean_bhat(i).num_helix
        final_Euclidean_bhat_matrix(i,2) =final_Euclidean_bhat(i).num_stick
    end
    
    
    %  *****************   Evaluation Bhattacharyya on three features (angle, deltaLength, Euclidean-d)   ***************
    
    final_angle_bhat_vector=final_angle_bhat_matrix(:,2);
    final_deltaLength_bhat_vector=final_deltaLength_bhat_matrix(:,2);
    final_Euclidean_bhat_vector=final_Euclidean_bhat_matrix(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_helix
        if final_angle_bhat_vector(i)==0  final_angle_bhat_vector(i)=number_all_helix +1;  end
        if final_deltaLength_bhat_vector(i)==0  final_deltaLength_bhat_vector(i)=number_all_helix +1; end
        if final_Euclidean_bhat_vector(i)==0  final_Euclidean_bhat_vector(i)=number_all_helix +1; end
    end
    
    
    [ matrix_angle_bhat,unassign_angle_bhat,match_angle_bhat,nmiscore_angle_bhat,accurateScore_angle_bhat,NetFmeasure_angle_bhat,sensitivity_angle_bhat,precision_angle_bhat,Fmeasure_angle_bhat,indF_angle_bhat] = evaluate(topology_file_vector,final_angle_bhat_vector)
    [ matrix_deltaLength_bhat,unassign_deltaLength_bhat,match_deltaLength_bhat,nmiscore_deltaLength_bhat,accurateScore_deltaLength_bhat,NetFmeasure_deltaLength_bhat,sensitivity_deltaLength_bhat,precision_deltaLength_bhat,Fmeasure_deltaLength_bhat,indF_deltaLength_bhat] = evaluate(topology_file_vector,final_deltaLength_bhat_vector)
    [ matrix_Euclidean_bhat,unassign_Euclidean_bhat,match_Euclidean_bhat,nmiscore_Euclidean_bhat,accurateScore_Euclidean_bhat,NetFmeasure_Euclidean_bhat,sensitivity_Euclidean_bhat,precision_Euclidean_bhat,Fmeasure_Euclidean_bhat,indF_Euclidean_bhat] = evaluate(topology_file_vector,final_Euclidean_bhat_vector)
    
    
    
    
    %%
    
    
    % *******************************************
    
    count=1;
    paired_matrix=[];
    
    first_angle_helix=[extend_angle_helix];
    first_angle_stick=[extend_angle_stick];
    first_deltaLength_helix=[extend_deltaLength_helix];
    first_deltaLength_stick=[extend_deltaLength_stick];
    first_euclidean_distance_helix=[extend_euclidean_distance_helix];
    first_euclidean_distance_stick=[extend_euclidean_distance_stick];
    flag_conflict=false;
    
    conflict_helix=0;
    conflict_stick=0;
    
    paired_matrix=[];
    size_end=stick_number   %%%% if helix_number == stick_number (priority to stick)
    
    
    %percentage of helix residue in sequence:
    
    number_residue_helix=sum(length_chain);
    percentage_residue_helix=(number_residue_helix/protein_data(Protein_ID).aminoacide)*100;
    
    
    
    % ************  mac: if vote3 ok else vote2 else plc ***************
    % result before adjust
 
    result_mac_vote3_2_plc = MAC_Vote3_Vote2_PLC(size_end,conflict_stick,conflict_helix,flag_conflict,first_angle_helix,extend_angle_helix,first_angle_stick,extend_angle_stick,first_deltaLength_helix,extend_deltaLength_helix,first_deltaLength_stick,extend_deltaLength_stick,first_euclidean_distance_helix,extend_euclidean_distance_helix,first_euclidean_distance_stick,extend_euclidean_distance_stick,helix_number_e,stick_number_e,count,paired_matrix)

    % ********************************************************************
    
    % ************ bhattacharyya: if vote3 ok else vote2 else plc *******
    % result before adjust
    
    result_bhattacharyya_vote3_2_plc  = bhattacharyya_Vote3_Vote2_PLC(size_end,conflict_stick,conflict_helix,flag_conflict,first_angle_helix,extend_angle_helix,first_angle_stick,extend_angle_stick,first_deltaLength_helix,extend_deltaLength_helix,first_deltaLength_stick,extend_deltaLength_stick,first_euclidean_distance_helix,extend_euclidean_distance_helix,first_euclidean_distance_stick,extend_euclidean_distance_stick,helix_number_e,stick_number_e,count,paired_matrix)
    
    % ********************************************************************
    
    
    %%
    
    % *************  calculate measure result_mac_vote3_2_plc ********************
    
    j=1;
    for i=1:helix_number
        final_correspondence_mac(j,1)=result_mac_vote3_2_plc(i,1)
        final_correspondence_mac(j,2)=result_mac_vote3_2_plc(i,2)
        j=j+1;
    end
    
    if remove_helix_index~=0
        [final_correspondence_mac] = Adjust_index_RVA(result_mac_vote3_2_plc,helix_number,remove_helix_index );
    end
    
    
    %  *****************   Evaluation RVA-MAC    ***************************
    
    final_correspondence_mac_vector=final_correspondence_mac(:,2);
    
    % create positive value for zero value for evaluation
    
    for i=1:number_all_helix
        if final_correspondence_mac_vector(i)==0  final_correspondence_mac_vector(i)=number_all_helix +1;  end
    end
    
    
    [ matrix_RVA_mac,unassign_RVA_mac,match_RVA_mac,nmiscore_RVA_mac,accurateScore_RVA_mac,NetFmeasure_RVA_mac,sensitivity_RVA_mac,precision_RVA_mac,Fmeasure_RVA_mac,indF_RVA_mac] = evaluate(topology_file_vector,final_correspondence_mac_vector)
    
    
    % ************* setting index for result_bhattacharyya_vote3_2_plc ********************
    j=1;
    for i=1:helix_number
        final_correspondence_bhattacharyya(j,1)=result_bhattacharyya_vote3_2_plc(i,1)
        final_correspondence_bhattacharyya(j,2)=result_bhattacharyya_vote3_2_plc(i,2)
        j=j+1;
    end
    
    if remove_helix_index~=0
        [final_correspondence_bhattacharyya] = Adjust_index_RVA( result_bhattacharyya_vote3_2_plc,helix_number,remove_helix_index );
    end
    
    
    
    %  *****************   Evaluation RVA-bhattacharyya    ***************
    
    final_correspondence_bhat_vector=final_correspondence_bhattacharyya(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_helix
        if final_correspondence_bhat_vector(i)==0  final_correspondence_bhat_vector(i)=number_all_helix +1;  end
    end
    
    
    [ matrix_RVA_bhat,unassign_RVA_bhat,match_RVA_bhat,nmiscore_RVA_bhat,accurateScore_RVA_bhat,NetFmeasure_RVA_bhat,sensitivity_RVA_bhat,precision_RVA_bhat,Fmeasure_RVA_bhat,indF_RVA_bhat] = evaluate(topology_file_vector,final_correspondence_bhat_vector)
    
    
    time_helix=toc;
    
    accurateScore_angle_bhat_helix=accurateScore_angle_bhat;
    accurateScore_deltaLength_bhat_helix=accurateScore_deltaLength_bhat;
    accurateScore_Euclidean_bhat_helix=accurateScore_Euclidean_bhat;
    accurateScore_angle_mac_helix=accurateScore_angle_mac;
    accurateScore_deltaLength_mac_helix=accurateScore_deltaLength_mac;
    accurateScore_Euclidean_mac_helix=accurateScore_Euclidean_mac;
    accurateScore_RVA_bhat_helix=accurateScore_RVA_bhat;
    accurateScore_RVA_mac_helix=accurateScore_RVA_mac;
    
end % helix info


%%

% ***********************************************************

% *******************  Extract Stick Information *************

% ***********************************************************
if sheet_info==1
    filename_strand=protein_data(Protein_ID).stick_strands;   %(SSETracer)
    d = csvread(filename_strand);
    numberStick = unique (d(:,4)); % array of index
    cnt1 =1;
    n=size(d,1); % number of all rows
    stick_number=size(numberStick);  % number of indexes
    stick_number=stick_number(1);
    
    for j=1:stick_number
        value=numberStick(j); % select each #index
        k=1;
        for i =1:n
            if (d(i,4)==value)
                stick_Matrix(k,:)=d(i,1:3);
                k=k+1;
            end
        end
        result_stick(j).Mat = stick_Matrix;
        stick_Matrix = [];
    end
    
    disp(result_stick);  % struct for all coordinate
    
    %%
    
    
    pdb=importdata(protein_data(Protein_ID).name);  % online: PDBStruct = getpdb(PDBid)
    number_all_strand=numel(pdb.Sheet);  % number of helices in each pdb
    AtomNumber=numel(pdb.Model.Atom);  % number of atoms in each pdb
    start_residue_chain=[pdb.Sheet.initSeqNum];  %array of all stat residue
    end_residue_chain=[pdb.Sheet.endSeqNum];    %array of all end residue
    resSeq=[pdb.Model.Atom.resSeq]; % Residue in Atom number
    
    
    for i=1:number_all_strand
        length_strands(i) =end_residue_chain(i)-start_residue_chain(i)+1
        
    end
    
    % Extract some data for all helices in chain before reducing
    k=1;
    strand_number=0;
    start_residue_chain=0;
    end_residue_chain=0;
    for i=1:number_all_strand
        if pdb.Sheet(i).initChainID==protein_data(Protein_ID).chain
            strand_number=strand_number+1;
            length_chain(k)=length_strands(i);
            start_residue_chain(k)=pdb.Sheet(i).initSeqNum;
            end_residue_chain(k)=pdb.Sheet(i).endSeqNum;
            k=k+1;
        end
    end
    
    % start equal cardinality process
    
    different_length=number_all_strand-stick_number
    
    for i=1:number_all_strand
        strand_data(i).length=length_chain(i)
        strand_data(i).start=start_residue_chain(i)
        strand_data(i).end=end_residue_chain(i)
    end
    
    
    for i=1:different_length
        min=100;
        for i=1:number_all_strand
            if strand_data(i).length<min
                min=strand_data(i).length;
                index=i;
            end
        end
        
        strand_data(index).length=1000
    end
    
    j=1;
    k=1;
    remove_strand_index=0;
    for i=1:number_all_strand
        if strand_data(i).length < 1000
            
            new_length_strand(j)=strand_data(i).length
            new_start_residue(j) =strand_data(i).start
            new_end_residue(j) =strand_data(i).end
            j=j+1;
        end
        if strand_data(i).length == 1000
            remove_strand_index(k)=i
            k=k+1;
        end
    end
    
    
    
    strand_number=number_all_strand-different_length;
    
    c=1;
    Matrix=zeros(strand_number,6);  % start+end voxel (6 items)
    cc=1;
    for i=1:strand_number
        s=new_start_residue(i);
        e=new_end_residue(i);
        
        for j=1:AtomNumber
            sw=0;
            if ((pdb.Model.Atom(j).resSeq)==s) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
                
                s_e_coordinate(1)=pdb.Model.Atom(j).X;
                s_e_coordinate(2)=pdb.Model.Atom(j).Y;
                s_e_coordinate(3)=pdb.Model.Atom(j).Z;
                
            end
            
            if ((pdb.Model.Atom(j).resSeq)==e) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
                sw=1;
                
                s_e_coordinate(4)=pdb.Model.Atom(j).X;
                s_e_coordinate(5)=pdb.Model.Atom(j).Y;
                s_e_coordinate(6)=pdb.Model.Atom(j).Z;
                
            end
            if sw==1
                Matrix(cc,:)=s_e_coordinate; % matrix for all start-end coordinate
                cc=cc+1;
            end
        end
        
    end
    
    % calculate all voxel for each strand and store in struct
    
    for i=1:strand_number
        m= Matrix(i,1);
        n= Matrix(i,2);
        o= Matrix(i,3);
        c=new_length_strand(i);
        k=1;
        l=0;  % counter for length of each strand
        next=0;
        flag =1;
        while (flag)
            for j=1:AtomNumber
                if ((pdb.Model.Atom(j).X==m) && (pdb.Model.Atom(j).Y==n) && (pdb.Model.Atom(j).Z==o))
                    strand_matrix(k,1)=pdb.Model.Atom(j).X;
                    strand_matrix(k,2)=pdb.Model.Atom(j).Y;
                    strand_matrix(k,3)=pdb.Model.Atom(j).Z;
                    k=k+1;
                    next=new_start_residue(i)+1;
                    l=l+1;
                end  % only one itteration  (start voxel of each strand)
                
                if ((pdb.Model.Atom(j).resSeq)==next) && (strcmp(pdb.Model.Atom(j).AtomName,'CA')==1)
                    
                    strand_matrix(k,1)=pdb.Model.Atom(j).X;
                    strand_matrix(k,2)=pdb.Model.Atom(j).Y;
                    strand_matrix(k,3)=pdb.Model.Atom(j).Z;
                    k=k+1;
                    next=next+1;
                    l=l+1;
                    
                end
                
                if (l==c)
                    result_strand(i).Mat = strand_matrix;
                    strand_matrix = [];
                    %h1 =[strand_matrix];
                    flag = 0;
                    break;
                end % end if
            end % end for j=1:AtomNumber
            
        end % end while 1
        
    end % end for i=1:strandNumber
    
    
    
    %  *************** End Pre-processing step *******************
    
    
    
    
    %%
    
    tic;
    
    % ***********************************************************
    %calculate the start and end voxel of all helices and sticks
    % ***********************************************************
    
    %calculate the start and end voxel of each strand
    p=1;
    for i=1:strand_number  % number of strand
        strand_mat_pdb=[result_strand(i).Mat];
        s=size(strand_mat_pdb,1);
        start_coordinate_strand(p,:)=strand_mat_pdb(1,:); % a matrix for star voxel
        end_coordinate_strand(p,:)=strand_mat_pdb(s,:);  % a matrix for end voxel
        p=p+1;
    end
    
    % extract start and end, then store in n*6 array
    
    for i=1:strand_number
        for j=1:3
            start_end_matrix_strand(i,j)=start_coordinate_strand(i,j);
            start_end_matrix_strand(i,j+3)=end_coordinate_strand(i,j);
        end
    end
    
    % extract x(start,end) ,y(start,end), z(start,end)for all strand
    for i=1:strand_number
        x_s_e_coordinate_strand(i,:)=[start_end_matrix_strand(i,1),start_end_matrix_strand(i,4)]
        y_s_e_coordinate_strand(i,:)=[start_end_matrix_strand(i,2),start_end_matrix_strand(i,5)]
        z_s_e_coordinate_strand(i,:)=[start_end_matrix_strand(i,3),start_end_matrix_strand(i,6)]
    end
    
    %  **************  for sticks ******************
    
    %calculate the start and end voxel of each stick
    p=1;
    for i=1:stick_number % number of indexes
        stick_mat=[result_stick(i).Mat];
        s=size(stick_mat,1);
        start_coordinate_stick(p,:)=stick_mat(1,:); % a matrix for star voxel
        end_coordinate_stick(p,:)=stick_mat(s,:);  % a matrix for end voxel
        p=p+1;
    end
    
    % extract start and end then store in n*6 array
    
    for i=1:stick_number
        for j=1:3
            start_end_matrix_stick(i,j)=start_coordinate_stick(i,j);
            start_end_matrix_stick(i,j+3)=end_coordinate_stick(i,j);
        end
    end
    
    % extract x(start,end) ,y(start,end), z(start,end)for all stick
    for i=1:stick_number
        x_s_e_coordinate_stick(i,:)=[start_end_matrix_stick(i,1),start_end_matrix_stick(i,4)]
        y_s_e_coordinate_stick(i,:)=[start_end_matrix_stick(i,2),start_end_matrix_stick(i,5)]
        z_s_e_coordinate_stick(i,:)=[start_end_matrix_stick(i,3),start_end_matrix_stick(i,6)]
    end
    
    
    
    %%
    %**********************************************************************
    
    % ******************** Extract the length   **************
    
    %**********************************************************************
    
    % calculate the length of each strand (Suppose each vector) |AB|
    
    for s=1:strand_number   % For all strand
        
        Xa=start_coordinate_strand(s,1);
        Ya=start_coordinate_strand(s,2);
        Za=start_coordinate_strand(s,3);
        
        Xb=end_coordinate_strand(s,1);
        Yb=end_coordinate_strand(s,2);
        Zb=end_coordinate_strand(s,3);
        
        v=(Xa-Xb)^2+(Ya-Yb)^2+(Za-Zb)^2;
        
        value=sqrt(v);  % magnitude of strand vector
        
        % R_value=round(value);
        R_value=value;
        quantity_strand(s).index=s;
        quantity_strand(s).length=R_value;
        
    end
    
    % calculate the length of each stick (Suppose each vector) |AB|
    for s=1:stick_number     % for all stick
        
        Xa=start_coordinate_stick(s,1);
        Ya=start_coordinate_stick(s,2);
        Za=start_coordinate_stick(s,3);
        
        Xb=end_coordinate_stick(s,1);
        Yb=end_coordinate_stick(s,2);
        Zb=end_coordinate_stick(s,3);
        
        v=(Xa-Xb)^2+(Ya-Yb)^2+(Za-Zb)^2;
        
        value=sqrt(v);  % magnitude of stick vector
        R_value=round(value);
        quantity_stick(s).index=s;
        quantity_stick(s).length=R_value;
        
        
    end
    
    
    
    %% First Feature: Angle
    
    %***************************************************************
    
    % ********************* Compute Angle  ************************
    
    %***************************************************************
    
    % Move each strand vector to start from (0,0,0) point
    
    for i=1:strand_number % number of strand
        j=1;
        x1=start_coordinate_strand(i,j);
        y1=start_coordinate_strand(i,j+1);
        z1=start_coordinate_strand(i,j+2);
        
        x2= end_coordinate_strand(i,j);
        y2= end_coordinate_strand(i,j+1);
        z2= end_coordinate_strand(i,j+2);
        
        u_x=x2-x1;
        u_y=y2-y1;
        u_z=z2-z1;
        
        j=1;
        end_vector_strand(i,j)=u_x;
        end_vector_strand(i,j+1)=u_y;
        end_vector_strand(i,j+2)=u_z;
    end
    
    % Move each stick vector to start from (0,0,0) point
    
    for i=1:stick_number % number of stick
        j=1;
        x1=start_coordinate_stick(i,j);
        y1=start_coordinate_stick(i,j+1);
        z1=start_coordinate_stick(i,j+2);
        
        x2=end_coordinate_stick(i,j);
        y2=end_coordinate_stick(i,j+1);
        z2=end_coordinate_stick(i,j+2);
        
        v_x=x2-x1;
        v_y=y2-y1;
        v_z=z2-z1;
        
        j=1;
        end_vector_stick(i,j)=v_x;
        end_vector_stick(i,j+1)=v_y;
        end_vector_stick(i,j+2)=v_z;
    end
    
    % compute the angle of each strand with others
    for i=1:strand_number
        u=end_vector_strand(i,:);
        
        for j=1:strand_number
            v=end_vector_strand(j,:);
            ThetaInDegrees = atan2d(norm(cross(u,v)),dot(u,v))
            %theta_radian=acos((u*v')/(norm(u)*norm(v)));
            %theta_degree=rad2deg(double(theta_radian));
            angle_strand(i,j)= ThetaInDegrees;
            mix_feature_strand(i,j).angle= ThetaInDegrees;
            
            
        end
    end
    
    % compute the angle of each stick with others
    
    for i=1:stick_number
        u=end_vector_stick(i,:);
        
        for j=1:stick_number
            v=end_vector_stick(j,:);
            ThetaInDegrees = atan2d(norm(cross(u,v)),dot(u,v))
            % theta_radian=acos((u*v')/(norm(u)*norm(v)));
            % theta_degree=rad2deg(theta_radian);
            angle_stick_strand(i,j)=ThetaInDegrees;
            mix_feature_stick_strand(i,j).angle=ThetaInDegrees;
            
            
        end
    end
    
    %% Second Feature: Euclidean Distance
    
    %***************************************************************
    
    % ************** Compute Euclidean Distance  *******************
    
    %***************************************************************
    
    % compute the Euclidean distance for strand matrix
    
    
    for i=1:strand_number
        
        x1_middle=(start_end_matrix_strand(i,1)+start_end_matrix_strand(i,4))/2;
        y1_middle=(start_end_matrix_strand(i,2)+start_end_matrix_strand(i,5))/2;
        z1_middle=(start_end_matrix_strand(i,3)+start_end_matrix_strand(i,6))/2;
        
        for j=1:strand_number
            x2_middle=(start_end_matrix_strand(j,1)+start_end_matrix_strand(j,4))/2;
            y2_middle=(start_end_matrix_strand(j,2)+start_end_matrix_strand(j,5))/2;
            z2_middle=(start_end_matrix_strand(j,3)+start_end_matrix_strand(j,6))/2;
            euclidean_distance_strand(i,j)=sqrt((x1_middle-x2_middle)^2+(y1_middle-y2_middle)^2+(z1_middle-z2_middle)^2);
        end
    end
    
    
    for i=1:stick_number
        
        x1_middle=(start_end_matrix_stick(i,1)+start_end_matrix_stick(i,4))/2;
        y1_middle=(start_end_matrix_stick(i,2)+start_end_matrix_stick(i,5))/2;
        z1_middle=(start_end_matrix_stick(i,3)+start_end_matrix_stick(i,6))/2;
        
        for j=1:stick_number
            x2_middle=(start_end_matrix_stick(j,1)+start_end_matrix_stick(j,4))/2;
            y2_middle=(start_end_matrix_stick(j,2)+start_end_matrix_stick(j,5))/2;
            z2_middle=(start_end_matrix_stick(j,3)+start_end_matrix_stick(j,6))/2;
            euclidean_distance_stick_strand(i,j)=sqrt((x1_middle-x2_middle)^2+(y1_middle-y2_middle)^2+(z1_middle-z2_middle)^2);
        end
    end
    
    
    %% Third Feature:  DeltaLength
    
    % **********************************************************************
    % ***** compute the Relative Delta length of each strand with others *****
    % **********************************************************************
    
    
    %  DeltaLength= abs(d1-d2)/d1+d2
    
    % phase1 : compute delta length
    for i=1:strand_number
        length_1= quantity_strand(i).length;
        for j=1:strand_number
            length_2= quantity_strand(j).length;
            deltaLength_strand(i,j)=(abs(length_1-length_2))/(length_1+length_2);
        end
    end
    
    % compute the Relative Delta length of each stick with others
    for i=1:stick_number
        length_1= quantity_stick(i).length;
        for j=1:stick_number
            length_2= quantity_stick(j).length;
            deltaLength_stick_strand(i,j)=(abs(length_1-length_2))/(length_1+length_2);
        end
    end
     
    
    %*************************  Extend Index  ***************************
    
    % **************************  Angle ********************
    
    %extend angle strand
    for i=1:1
        for j=1:strand_number+1
            extend_angle_strand(i,j)=j-1;
        end
    end
    for i=1:strand_number+1
        for j=1:1
            extend_angle_strand(i,j)=i-1;
        end
    end
    for i=2:strand_number+1
        for j=2:strand_number+1
            extend_angle_strand(i,j)=angle_strand(i-1,j-1)
        end
    end
    
    %extend angle stick
    for i=1:1
        for j=1:stick_number+1
            extend_angle_stick_strand(i,j)=j-1;
        end
    end
    for i=1:stick_number+1
        for j=1:1
            extend_angle_stick_strand(i,j)=i-1;
        end
    end
    for i=2:stick_number+1
        for j=2:strand_number+1
            extend_angle_stick_strand(i,j)=angle_stick_strand(i-1,j-1)
        end
    end
    % ************************************************************
    
    % ********************  Euclidean Distance  ******************
    
    % extend Eculidian strand
    for i=1:1
        for j=1:strand_number+1
            extend_euclidean_distance_strand(i,j)=j-1;
        end
    end
    for i=1:strand_number+1
        for j=1:1
            extend_euclidean_distance_strand(i,j)=i-1;
        end
    end
    for i=2:strand_number+1
        for j=2:strand_number+1
            extend_euclidean_distance_strand(i,j)=euclidean_distance_strand(i-1,j-1)
        end
    end
    
    
    %extend Eculidian stick
    for i=1:1
        for j=1:stick_number+1
            extend_euclidean_distance_stick_strand(i,j)=j-1;
        end
    end
    for i=1:stick_number+1
        for j=1:1
            extend_euclidean_distance_stick_strand(i,j)=i-1;
        end
    end
    for i=2:stick_number+1
        for j=2:stick_number+1
            extend_euclidean_distance_stick_strand(i,j)=euclidean_distance_stick_strand(i-1,j-1);
        end
    end
    
    % ************************************************************
    
    % ********************  Relative Length  *********************
    
    %extend deltaLength strand
    for i=1:1
        for j=1:strand_number+1
            extend_deltaLength_strand(i,j)=j-1;
        end
    end
    for i=1:strand_number+1
        for j=1:1
            extend_deltaLength_strand(i,j)=i-1;
        end
    end
    for i=2:strand_number+1
        for j=2:strand_number+1
            extend_deltaLength_strand(i,j)=deltaLength_strand(i-1,j-1)
        end
    end
    
    % extend deltaLength stick
    for i=1:1
        for j=1:stick_number+1
            extend_deltaLength_stick_strand(i,j)=j-1;
        end
    end
    for i=1:stick_number+1
        for j=1:1
            extend_deltaLength_stick_strand(i,j)=i-1;
        end
    end
    for i=2:stick_number+1
        for j=2:stick_number+1
            extend_deltaLength_stick_strand(i,j)=deltaLength_stick_strand(i-1,j-1)
        end
    end
    
    %%  Compute MAC and Bhattacharya Score
    %******************************************
    
    
    filename3=protein_data(Protein_ID).topology_strands;
    topology_file_strand = csvread(filename3);
    
    % create positive value for zero value for evaluation
    topology_file_vector_strand=topology_file_strand(:,2);
    for i=1:number_all_strand
        if topology_file_vector_strand(i)==0  topology_file_vector_strand(i)=number_all_strand +1;  end
    end
    
    
    
    strand_number_e=strand_number+1 ;
    stick_number_e=stick_number+1;
    
    
    % **************  start mac  ****************
    
    [index_angle_mac_strand,mac_answer_angle_strand]=compute_angle_mac(extend_angle_strand,extend_angle_stick_strand,strand_number_e,stick_number_e);
    [index_deltaLength_mac_strand,mac_answer_deltaLength_strand]=compute_deltaLength_mac(extend_deltaLength_strand,extend_deltaLength_stick_strand,strand_number_e,stick_number_e);
    [index_Euclidean_mac_strand,mac_answer_Euclidean_strand]=compute_Euclidean_mac(extend_euclidean_distance_strand,extend_euclidean_distance_stick_strand,strand_number_e,stick_number_e );
    
    
    c=1;
    for i=2:strand_number+1
        w_strand(1,:)=mac_answer_angle_strand(1,1:strand_number+1)
        w_strand(i,1)=mac_answer_angle_strand(i,1)
        w_strand(i,2:strand_number+1)=mac_answer_angle_strand(i,2:strand_number+1)+ mac_answer_deltaLength_strand(i,2:strand_number+1) + mac_answer_Euclidean_strand(i,2:strand_number+1)
        
    end
    
    
    
    % ******* adjust index for three-features with mac *******
    
    final_angle_mac_strand=[index_angle_mac_strand];
    final_deltaLength_mac_strand=[index_deltaLength_mac_strand]
    final_Euclidean_mac_strand=[index_Euclidean_mac_strand]
    
    % construct array from structure
    
    % for the cardinality not the same
    if remove_strand_index~=0
        [final_angle_mac_strand] = Adjust_index(index_angle_mac_strand,strand_number,remove_strand_index )
        [final_deltaLength_mac_strand] = Adjust_index(index_deltaLength_mac_strand,strand_number,remove_strand_index )
        [final_Euclidean_mac_strand] = Adjust_index(index_Euclidean_mac_strand,strand_number,remove_strand_index )
        
    end
    
    % construct matrix from structure
    for i=1:number_all_strand
        final_angle_mac_matrix_strand(i,1)=final_angle_mac_strand(i).num_helix
        final_angle_mac_matrix_strand(i,2) =final_angle_mac_strand(i).num_stick
    end
    
    for i=1:number_all_strand
        final_deltaLength_mac_matrix_strand(i,1)=final_deltaLength_mac_strand(i).num_helix
        final_deltaLength_mac_matrix_strand(i,2) =final_deltaLength_mac_strand(i).num_stick
    end
    
    for i=1:number_all_strand
        final_Euclidean_mac_matrix_strand(i,1)=final_Euclidean_mac_strand(i).num_helix
        final_Euclidean_mac_matrix_strand(i,2) =final_Euclidean_mac_strand(i).num_stick
    end
    
    
    
    %  *****************   Evaluation Mac on three features (angle, deltaLength,Euclidean-d)   ***************
    
    final_angle_mac_vector_strand=final_angle_mac_matrix_strand(:,2);
    final_deltaLength_mac_vector_strand=final_deltaLength_mac_matrix_strand(:,2);
    final_Euclidean_mac_vector_strand=final_Euclidean_mac_matrix_strand(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_strand
        if final_angle_mac_vector_strand(i)==0  final_angle_mac_vector_strand(i)=number_all_strand +1;  end
        if final_deltaLength_mac_vector_strand(i)==0  final_deltaLength_mac_vector_strand(i)=number_all_strand +1; end
        if final_Euclidean_mac_vector_strand(i)==0  final_Euclidean_mac_vector_strand(i)=number_all_strand +1; end
    end
    
    
    
    [ matrix_angle_mac_strand,unassign_angle_mac_strand,match_angle_mac_strand,nmiscore_angle_mac_strand,accurateScore_angle_mac_strand,NetFmeasure_angle_mac_strand,sensitivity_angle_mac_strand,precision_angle_mac_strand,Fmeasure_angle_mac_strand,indF_angle_mac_strand] = evaluate(topology_file_vector_strand,final_angle_mac_vector_strand)
    [ matrix_deltaLength_mac_strand,unassign_deltaLength_mac_strand,match_deltaLength_mac_strand,nmiscore_deltaLength_mac_strand,accurateScore_deltaLength_mac_strand,NetFmeasure_deltaLength_mac_strand,sensitivity_deltaLength_mac_strand,precision_deltaLength_mac_strand,Fmeasure_deltaLength_mac_strand,indF_deltaLength_mac_strand] = evaluate(topology_file_vector_strand,final_deltaLength_mac_vector_strand)
    [ matrix_Euclidean_mac_strand,unassign_Euclidean_mac_strand,match_Euclidean_mac_strand,nmiscore_Euclidean_mac_strand,accurateScore_Euclidean_mac_strand,NetFmeasure_Euclidean_mac_strand,sensitivity_Euclidean_mac_strand,precision_Euclidean_mac_strand,Fmeasure_Euclidean_mac_strand,indF_Euclidean_mac_strand] = evaluate(topology_file_vector_strand,final_Euclidean_mac_vector_strand)
    
    
    %%
    
    % *************  Compute and drowing plot phase for Bhattacharyya *****************
    
    
    [index_angle_bhat_strand,bhat_answer_angle_strand]=compute_angle_bhattacharyya(extend_angle_strand,extend_angle_stick_strand,strand_number_e,stick_number_e);
    [index_deltaLength_bhat_strand,bhat_answer_deltaLength_strand]=compute_deltaLength_bhattacharyya(extend_deltaLength_strand,extend_deltaLength_stick_strand,strand_number_e,stick_number_e);
    [index_Euclidean_bhat_strand,bhat_answer_Euclidean_strand]=compute_Euclidean_bhattacharyya(extend_euclidean_distance_strand,extend_euclidean_distance_stick_strand,strand_number_e,stick_number_e);
    
    % ******* adjust index for three-features with bhattacharyya **********************
    
    final_angle_bhat_strand=[index_angle_bhat_strand];
    final_deltaLength_bhat_strand=[index_deltaLength_bhat_strand]
    final_Euclidean_bhat_strand=[index_Euclidean_bhat_strand]
    
    % for the cardinality not the same
    if remove_strand_index~=0
        [final_angle_bhat_strand] = Adjust_index( index_angle_bhat_strand,strand_number,remove_strand_index )
        [final_deltaLength_bhat_strand] = Adjust_index(index_deltaLength_bhat_strand,strand_number,remove_strand_index )
        [final_Euclidean_bhat_strand] = Adjust_index( index_Euclidean_bhat_strand,strand_number,remove_strand_index )
    end
    
    % construct matrix from structure
    for i=1:number_all_strand
        final_angle_bhat_matrix_strand(i,1)=final_angle_bhat_strand(i).num_helix  % num_strand
        final_angle_bhat_matrix_strand(i,2) =final_angle_bhat_strand(i).num_stick
    end
    
    for i=1:number_all_strand
        final_deltaLength_bhat_matrix_strand(i,1)=final_deltaLength_bhat_strand(i).num_helix % num_strand
        final_deltaLength_bhat_matrix_strand(i,2) =final_deltaLength_bhat_strand(i).num_stick
    end
    
    for i=1:number_all_strand
        final_Euclidean_bhat_matrix_strand(i,1)=final_Euclidean_bhat_strand(i).num_helix % num_strand
        final_Euclidean_bhat_matrix_strand(i,2) =final_Euclidean_bhat_strand(i).num_stick
    end
    
    
    %  *****************   Evaluation Bhattacharyya on three features (angle, deltaLength, Euclidean-d)   ***************
    
    final_angle_bhat_vector_strand=final_angle_bhat_matrix_strand(:,2);
    final_deltaLength_bhat_vector_strand=final_deltaLength_bhat_matrix_strand(:,2);
    final_Euclidean_bhat_vector_strand=final_Euclidean_bhat_matrix_strand(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_strand
        if final_angle_bhat_vector_strand(i)==0  final_angle_bhat_vector_strand(i)=number_all_strand +1;  end
        if final_deltaLength_bhat_vector_strand(i)==0  final_deltaLength_bhat_vector_strand(i)=number_all_strand +1; end
        if final_Euclidean_bhat_vector_strand(i)==0  final_Euclidean_bhat_vector_strand(i)=number_all_strand +1; end
    end
    
    
    [ matrix_angle_bhat_strand,unassign_angle_bhat_strand,match_angle_bhat_strand,nmiscore_angle_bhat_strand,accurateScore_angle_bhat_strand,NetFmeasure_angle_bhat_strand,sensitivity_angle_bhat_strand,precision_angle_bhat_strand,Fmeasure_angle_bhat_strand,indF_angle_bhat_strand] = evaluate(topology_file_vector_strand,final_angle_bhat_vector_strand)
    [ matrix_deltaLength_bhat_strand,unassign_deltaLength_bhat_strand,match_deltaLength_bhat_strand,nmiscore_deltaLength_bhat_strand,accurateScore_deltaLength_bhat_strand,NetFmeasure_deltaLength_bhat_strand,sensitivity_deltaLength_bhat_strand,precision_deltaLength_bhat_strand,Fmeasure_deltaLength_bhat_strand,indF_deltaLength_bhat_strand_strand] = evaluate(topology_file_vector_strand,final_deltaLength_bhat_vector_strand)
    [ matrix_Euclidean_bhat_strand,unassign_Euclidean_bhat_strand,match_Euclidean_bhat_strand,nmiscore_Euclidean_bhat_strand,accurateScore_Euclidean_bhat_strand,NetFmeasure_Euclidean_bhat_strand,sensitivity_Euclidean_bhat_strand,precision_Euclidean_bhat_strand,Fmeasure_Euclidean_bhat_strand,indF_Euclidean_bhat_strand] = evaluate(topology_file_vector_strand,final_Euclidean_bhat_vector_strand)
    
    
    
    
    %%
    
    
    % *******************************************
    
    count=1;
    paired_matrix=[];
    
    first_angle_strand=[extend_angle_strand];
    first_angle_stick_strand=[extend_angle_stick_strand];
    first_deltaLength_strand=[extend_deltaLength_strand];
    first_deltaLength_stick_strand=[extend_deltaLength_stick_strand];
    first_euclidean_distance_strand=[extend_euclidean_distance_strand];
    first_euclidean_distance_stick_strand=[extend_euclidean_distance_stick_strand];
    flag_conflict=false;
    
    conflict_strand=0;
    conflict_stick=0;
    
    paired_matrix=[];
    size_end=stick_number   %%%% if strand_number == stick_number (priority to stick)
    
    
    %percentage of strand residue in sequence:
    
    number_residue_strand=sum(length_chain);
    percentage_residue_strand=(number_residue_strand/protein_data(Protein_ID).aminoacide)*100;
    
    
    
    % ************  mac: if vote3 ok else vote2 else plc ****
    % result before adjust
    result_mac_vote3_2_plc_strand = MAC_Vote3_Vote2_PLC(size_end,conflict_stick,conflict_strand,flag_conflict,first_angle_strand,extend_angle_strand,first_angle_stick_strand,extend_angle_stick_strand,first_deltaLength_strand,extend_deltaLength_strand,first_deltaLength_stick_strand,extend_deltaLength_stick_strand,first_euclidean_distance_strand,extend_euclidean_distance_strand,first_euclidean_distance_stick_strand,extend_euclidean_distance_stick_strand,strand_number_e,stick_number_e,count,paired_matrix)

    % ********************************************************************
    
    % ************ bhattacharyya: if vote3 ok else vote2 else plc ****
    % result before adjust
    
    result_bhattacharyya_vote3_2_plc_strand  = bhattacharyya_Vote3_Vote2_PLC(size_end,conflict_stick,conflict_strand,flag_conflict,first_angle_strand,extend_angle_strand,first_angle_stick_strand,extend_angle_stick_strand,first_deltaLength_strand,extend_deltaLength_strand,first_deltaLength_stick_strand,extend_deltaLength_stick_strand,first_euclidean_distance_strand,extend_euclidean_distance_strand,first_euclidean_distance_stick_strand,extend_euclidean_distance_stick_strand,strand_number_e,stick_number_e,count,paired_matrix)
    
    % ********************************************************************
    
    
    %%
    
    % *************  calculate measure result_mac_vote3_2_plc ********************
    
    j=1;
    for i=1:strand_number
        final_correspondence_mac_strand(j,1)=result_mac_vote3_2_plc_strand(i,1)
        final_correspondence_mac_strand(j,2)=result_mac_vote3_2_plc_strand(i,2)
        j=j+1;
    end
    
    if remove_strand_index~=0
        [final_correspondence_mac_strand] = Adjust_index_RVA(result_mac_vote3_2_plc_strand,strand_number,remove_strand_index );
    end
    
    
    %  *****************   Evaluation RVA-MAC    *************************
    
    final_correspondence_mac_vector_strand=final_correspondence_mac_strand(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_strand
        if final_correspondence_mac_vector_strand(i)==0  final_correspondence_mac_vector_strand(i)=number_all_strand +1;  end
    end
    
    
    [ matrix_RVA_mac_strand,unassign_RVA_mac_strand,match_RVA_mac_strand,nmiscore_RVA_mac_strand,accurateScore_RVA_mac_strand,NetFmeasure_RVA_mac_strand,sensitivity_RVA_mac_strand,precision_RVA_mac_strand,Fmeasure_RVA_mac_strand,indF_RVA_mac_strand] = evaluate(topology_file_vector_strand,final_correspondence_mac_vector_strand)
    
    
    
    
    % ************* setting index for result_bhattacharyya_vote3_2_plc ********************
    j=1;
    for i=1:strand_number
        final_correspondence_bhattacharyya_strand(j,1)=result_bhattacharyya_vote3_2_plc_strand(i,1)
        final_correspondence_bhattacharyya_strand(j,2)=result_bhattacharyya_vote3_2_plc_strand(i,2)
        j=j+1;
    end
    
    if remove_strand_index~=0
        [final_correspondence_bhattacharyya_strand] = Adjust_index_RVA( result_bhattacharyya_vote3_2_plc_strand,strand_number,remove_strand_index );
    end
    
    
    
    %  *****************   Evaluation RVA-bhattacharyya    ***************
    
    final_correspondence_bhat_vector_strand=final_correspondence_bhattacharyya_strand(:,2);
    
    % create positive value for zero value for evaluation
    for i=1:number_all_strand
        if final_correspondence_bhat_vector_strand(i)==0  final_correspondence_bhat_vector_strand(i)=number_all_strand +1;  end
    end
    
    
    [ matrix_RVA_bhat_strand,unassign_RVA_bhat_strand,match_RVA_bhat_strand,nmiscore_RVA_bhat_strand,accurateScore_RVA_bhat_strand,NetFmeasure_RVA_bhat_strand,sensitivity_RVA_bhat_strand,precision_RVA_bhat_strand,Fmeasure_RVA_bhat_strand,indF_RVA_bhat_strand] = evaluate(topology_file_vector_strand,final_correspondence_bhat_vector_strand)
    
    
    time_strand=toc;
    
    accurateScore_angle_bhat_strand=accurateScore_angle_bhat_strand;
    accurateScore_deltaLength_bhat_strand=accurateScore_deltaLength_bhat_strand;
    accurateScore_Euclidean_bhat_strand=accurateScore_Euclidean_bhat_strand;
    accurateScore_angle_mac_strand=accurateScore_angle_mac_strand;
    accurateScore_deltaLength_mac_strand=accurateScore_deltaLength_mac_strand;
    accurateScore_Euclidean_mac_strand=accurateScore_Euclidean_mac_strand;
    accurateScore_RVA_bhat_strand=accurateScore_RVA_bhat_strand;
    accurateScore_RVA_mac_strand=accurateScore_RVA_mac_strand;
    
end % end sheet info

%%
% *******************************  Dispaly ***********************************


if helix_info==1
    
    % **************************   Show results *******************************
    clc;
    disp ('**************************************************************');
    disp ('**************** Results for Helices *************************');
    disp ('**************************************************************');
    disp (' ');
    disp ('Percentage of accuracy_Angle_Bhat_Helix');
    disp (100*accurateScore_angle_bhat_helix)
    
    disp ('Percentage of accuracy_Euclidean (ED)_Bhat_Helix');
    disp (100*accurateScore_Euclidean_bhat_helix)
    
    disp ('Percentage of accuracy_RelativeLength(RL)_Bhat_Helix');
    disp (100*accurateScore_deltaLength_bhat_helix)
    
    
    disp ('Percentage of total_Features_Bhat_Helix');
    disp (100*(accurateScore_angle_bhat_helix+accurateScore_deltaLength_bhat_helix+accurateScore_Euclidean_bhat_helix)/3)
    
    
    disp('****************************************************************')
    
    disp ('Percentage of accuracy_Angle_mac_Helix');
    disp (100*accurateScore_angle_mac_helix);
    
    disp ('Percentage of accuracy_Euclidean(ED)_mac_Helix');
    disp (100*accurateScore_Euclidean_mac_helix)
    
    disp ('Percentage of accuracy_RelativeLength(RL)_mac_Helix');
    disp (100*accurateScore_deltaLength_mac_helix)
    
    
    disp ('Percentage of total_Features_MAC_Helix');
    disp (100*(accurateScore_angle_mac_helix+accurateScore_deltaLength_mac_helix+accurateScore_Euclidean_mac_helix)/3)
    
    
    
    disp('*****************************************************************')
    disp ('Percentage of accuracy_RVA_Bhattacharyya_Helix');
    disp (100*accurateScore_RVA_bhat_helix)
    
    disp ('Percentage of accuracy_RVA_MAC_Helix');
    disp (100*accurateScore_RVA_mac_helix)
    
    
    disp('** Time for matching helices **')
    disp(time_helix)
    
    
    disp ('**************************************************************');
    disp ('*********  Metrics for RVA algorithm (Helix) *****************');
    disp ('**************************************************************');
    
    disp ('Precision_RVA_bhat_helix:');
    disp (100*precision_RVA_bhat);
    disp ('Sensitivity_RVA_bhat_helix:');
    disp (100*sensitivity_RVA_bhat);
    disp ('Fmeasure_RVA_bhat_helix:');
    disp (100*Fmeasure_RVA_bhat);
    disp ('***************************************************************');
    
    disp ('Precision_RVA_mac_helix:');
    disp (100*precision_RVA_mac);
    disp ('Sensitivity_RVA_mac_helix:');
    disp (100*sensitivity_RVA_mac);
    disp ('Fmeasure_RVA_mac_helix:');
    disp (100*Fmeasure_RVA_mac);
    
end    % end of helix info for results

if sheet_info==1
    
    disp ('**************************************************************');
    disp ('***************** Results for Sheets *************************');
    disp ('**************************************************************');
    disp (' ');
    
    disp ('Percentage of accuracy_Angle_Bhat_Sheet');
    disp (100*accurateScore_angle_bhat_strand)
    
    disp ('Percentage of accuracy_Euclidean (ED)_Bhat_Sheet');
    disp (100*accurateScore_Euclidean_bhat_strand)
    
    disp ('Percentage of accuracy_RelativeLength(RL)_Bhat_Sheet');
    disp (100*accurateScore_deltaLength_bhat_strand)
    
    
    disp ('Percentage of total_Features_Bhat_Sheet');
    disp (100*(accurateScore_angle_bhat_strand+accurateScore_deltaLength_bhat_strand+accurateScore_Euclidean_bhat_strand)/3)
    
    
    
    disp('****************************************************************');
    
    disp ('Percentage of accuracy_Angle_mac_Sheet');
    disp (100*accurateScore_angle_mac_strand);
    
    disp ('Percentage of accuracy_Euclidean(ED)_mac_Sheet');
    disp (100*accurateScore_Euclidean_mac_strand)
    
    
    disp ('Percentage of accuracy_RelativeLength(RL)_mac_Sheet');
    disp (100*accurateScore_deltaLength_mac_strand)
    
    
    disp ('Percentage of Total_Features_MAC_Sheet');
    disp (100*(accurateScore_angle_mac_strand+accurateScore_deltaLength_mac_strand+accurateScore_Euclidean_mac_strand)/3)
    
    
    disp('****************************************************************')
    disp ('Percentage of accuracy_RVA_Bhattacharyya_Sheet');
    disp (100*accurateScore_RVA_bhat_strand)
    
    disp ('Percentage of accuracy_RVA_MAC_Sheet');
    disp (100*accurateScore_RVA_mac_strand)
    
    
    disp('** Time for matching strands **')
    disp(time_strand)
    
    
    
    disp ('***************************************************************');
    disp ('*************  Metrics for RVA algorithm (Sheet) **************');
    disp ('***************************************************************');
    
    disp ('Precision_RVA_bhat_Sheet:');
    disp (100*precision_RVA_bhat_strand);
    disp ('Sensitivity_RVA_bhat_Sheet:');
    disp (100*sensitivity_RVA_bhat_strand);
    disp ('Fmeasure_RVA_bhat_Sheet:');
    disp (100*Fmeasure_RVA_bhat_strand);
    disp ('****************************************************************');
    
    disp ('Precision_RVA_mac_Sheet:');
    disp (100*precision_RVA_mac_strand);
    disp ('Sensitivity_RVA_mac_Sheet:');
    disp (100*sensitivity_RVA_mac_strand);
    disp ('Fmeasure_RVA_mac_Sheet:');
    disp (100*Fmeasure_RVA_mac_strand);
    
end  % end of sheet info for results



if helix_info==1 && sheet_info==1
    total_time=time_helix+time_strand;
    accurateScore_angle_bhat_SSE=(accurateScore_angle_bhat_helix+accurateScore_angle_bhat_strand)/2;
    accurateScore_deltaLength_bhat_SSE=(accurateScore_deltaLength_bhat_helix+accurateScore_deltaLength_bhat_strand)/2;
    accurateScore_Euclidean_bhat_SSE=(accurateScore_Euclidean_bhat_helix+accurateScore_Euclidean_bhat_strand)/2;
    accurateScore_angle_mac_SSE=(accurateScore_angle_mac_helix+accurateScore_angle_mac_strand)/2;
    accurateScore_deltaLength_mac_SSE=(accurateScore_deltaLength_mac_helix+accurateScore_deltaLength_mac_strand)/2;
    accurateScore_Euclidean_mac_SSE=(accurateScore_Euclidean_mac_helix+accurateScore_Euclidean_mac_strand)/2;
    accurateScore_RVA_bhat_SSE=(accurateScore_RVA_bhat_helix+accurateScore_RVA_bhat_strand)/2;
    accurateScore_RVA_mac_SSE=(accurateScore_RVA_mac_helix+accurateScore_RVA_mac_strand)/2;
    
    
    precision_RVA_bhat_SSE=(precision_RVA_bhat+precision_RVA_bhat_strand)/2;
    sensitivity_RVA_bhat_SSE=(sensitivity_RVA_bhat+sensitivity_RVA_bhat_strand)/2;
    Fmeasure_RVA_bhat_SSE=(Fmeasure_RVA_bhat+Fmeasure_RVA_bhat_strand)/2;
    
    precision_RVA_mac_SSE=(precision_RVA_mac+precision_RVA_mac_strand)/2;
    sensitivity_RVA_mac_SSE=(sensitivity_RVA_mac+sensitivity_RVA_mac_strand)/2;
    Fmeasure_RVA_mac_SSE=(Fmeasure_RVA_mac+Fmeasure_RVA_mac_strand)/2;
    
    
    disp ('**************************************************************');
    disp ('********************* Results for all SSEs ********************');
    disp ('***************************************************************');
    disp ('Total time for matching all SSEs:');
    disp (total_time);
    
    disp ('AccurateScore_angle_bhat_SSE:');
    disp (100*accurateScore_angle_bhat_SSE);
    disp ('AccurateScore_Euclidean_bhat_SSE');
    disp (100*accurateScore_Euclidean_bhat_SSE);
    disp ('AccurateScore_deltaLength_bhat_SSE:');
    disp (100*accurateScore_deltaLength_bhat_SSE);
    
    
    disp ('Total_Features_bhat_SSEs');
    disp (100*(accurateScore_angle_bhat_SSE+accurateScore_deltaLength_bhat_SSE+accurateScore_Euclidean_bhat_SSE)/3)
    
    disp ('****************************************************************');

    
    disp ('AccurateScore_angle_mac_SSE:');
    disp (100*accurateScore_angle_mac_SSE);
    disp ('AccurateScore_Euclidean_mac_SSE:');
    disp (100*accurateScore_Euclidean_mac_SSE);
    disp ('AccurateScore_deltaLength_mac_SSE');
    disp (100*accurateScore_deltaLength_mac_SSE);
    
    
    disp ('Total_Features_MAC_SSE');
    disp (100*(accurateScore_angle_mac_SSE+accurateScore_deltaLength_mac_SSE+accurateScore_Euclidean_mac_SSE)/3)
    
   disp ('****************************************************************');
  
    
    disp ('AccurateScore_RVA_bhat_SSE:');
    disp (100*accurateScore_RVA_bhat_SSE);
    disp ('AccurateScore_RVA_mac_SSE');
    disp (100*accurateScore_RVA_mac_SSE);
    
    
    disp ('**************************************************************');
    disp ('******  Metrics for RVA algorithm for SSES *******************');
    disp ('**************************************************************');
    
    disp ('Precision_RVA_bhat_SSE:');
    disp (100*precision_RVA_bhat_SSE);
    disp ('Sensitivity_RVA_bhat_SSE:');
    disp (100*sensitivity_RVA_bhat_SSE);
    disp ('Fmeasure_RVA_bhat_SSE:');
    disp (100*Fmeasure_RVA_bhat_SSE);
    disp ('**************************************************************');
    
    
    
    disp ('Precision_RVA_mac_SSE:');
    disp (100*precision_RVA_mac_SSE);
    disp ('Sensitivity_RVA_mac_SSE:');
    disp (100*sensitivity_RVA_mac_SSE);
    disp ('Fmeasure_RVA_mac_SSE');
    disp (100*Fmeasure_RVA_mac_SSE);
    
    
    
    disp ('Finish')
    
      
end
