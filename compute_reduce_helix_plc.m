function [reduced_angle_helix_mac,reduced_deltaLength_helix_mac,reduced_Euclidean_helix_mac ] = compute_reduce_helix_mac(remove_helix_mac,helix_number,angle_helix,deltaLength_helix,Euclidean_helix)


L=length(remove_helix_mac);

% delete row for angle helix matrix

v=1;
for i=1:helix_number
    flag=false;
    for j=1:L 
    
        if angle_helix(i,1)==remove_helix_mac(j)
            flag=true;
            break;
        end
    end      
    if (flag==false)
      [reduced_row_deltaLength_helix(v,1:helix_number)]=[angle_helix(i,1:helix_number)];
       index_real(v)=angle_helix(i,1)
       v=v+1; 
    end
end


% delete column for angle helix matrix

v=1;
for j=1:helix_number
    flag=false;
    for k=1:L 
    
        if angle_helix(1,j)==remove_helix_mac(k)  
            flag=true;
            break;
        end
    end      
    if (flag==false)
         reduced_column_angle_helix(1,v)=angle_helix(1,j);
       [reduced_column_angle_helix(2:length(index_real),v)]=[reduced_row_deltaLength_helix(2:length(index_real),j)];
       index_real_c(1,v)=angle_helix(1,j);
       v=v+1; 
    end
end

reduced_column_angle_helix(:,1)=(index_real_c)';
reduced_angle_helix_mac=reduced_column_angle_helix;

% *****************************************************************
% *****************************************************************

% delete row for deltaLength helix matrix

v=1;
for i=1:helix_number
    flag=false;
    for j=1:L 
    
        if deltaLength_helix(i,1)==remove_helix_mac(j)
            flag=true;
            break;
        end
    end      
    if (flag==false)
        reduced_row_deltaLength_helix(v,1)=deltaLength_helix(i,1);
       [reduced_row_deltaLength_helix(v,1:helix_number)]=[deltaLength_helix(i,1:helix_number)];
       index_real(v)=deltaLength_helix(i,1);
       v=v+1; 
    end
end


% delete column for deltaLength helix matrix

v=1;
for j=1:helix_number
    flag=false;
    for k=1:L 
    
        if deltaLength_helix(1,j)==remove_helix_mac(k)
            flag=true;
            break;
        end
    end      
    if (flag==false)
         reduced_column_deltaLength_helix(1,v)=deltaLength_helix(1,j);
       [reduced_column_deltaLength_helix(2:length(index_real),v)]=[reduced_row_deltaLength_helix(2:length(index_real),j)];
       index_real_c(1,v)=deltaLength_helix(1,j);
       v=v+1; 
    end
end

reduced_column_deltaLength_helix(:,1)=(index_real_c)';
reduced_deltaLength_helix_mac=reduced_column_deltaLength_helix;


% *****************************************************************
% *****************************************************************

% delete row for Euclidean helix matrix

v=1;
for i=1:helix_number
    flag=false;
    for j=1:L 
    
        if Euclidean_helix(i,1)==remove_helix_mac(j) 
            flag=true;
            break;
        end
    end      
    if (flag==false)
        reduced_row_Euclidean_helix(v,1)=Euclidean_helix(i,1);
       [reduced_row_Euclidean_helix(v,1:helix_number)]=[Euclidean_helix(i,1:helix_number)];
       index_real(v)=Euclidean_helix(i,1);
       v=v+1; 
    end
end


% delete column for Euclidean helix matrix

v=1;
for j=1:helix_number
    flag=false;
    for k=1:L 
    
        if Euclidean_helix(1,j)==remove_helix_mac(k)  
            flag=true;
            break;
        end
    end      
    if (flag==false)
         reduced_column_Euclidean_helix(1,v)=Euclidean_helix(1,j);
       [reduced_column_Euclidean_helix(2:length(index_real),v)]=[reduced_row_Euclidean_helix(2:length(index_real),j)];
       index_real_c(1,v)=Euclidean_helix(1,j);
       v=v+1; 
    end
end

reduced_column_Euclidean_helix(:,1)=(index_real_c)';
reduced_Euclidean_helix_mac=reduced_column_Euclidean_helix;


end

