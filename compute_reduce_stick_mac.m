function [reduced_angle_stick_mac,reduced_deltaLength_stick_mac,reduced_Euclidean_stick_mac ] =compute_reduce_stick_mac(remove_stick_mac,stick_number,angle_stick,deltaLength_stick,Euclidean_stick)



L=length(remove_stick_mac);

% delete row for angle stick matrix

v=1;
for i=1:stick_number
    flag=false;
    for j=1:L 
    
        if angle_stick(i,1)==remove_stick_mac(j)
            flag=true;
            break;
        end
    end      
    if (flag==false)
      [reduced_row_deltaLength_stick(v,1:stick_number)]=[angle_stick(i,1:stick_number)];
       index_real(v)=angle_stick(i,1)
       v=v+1; 
    end
end


% delete column for angle stick matrix

v=1;
for j=1:stick_number
    flag=false
    for k=1:L 
    
        if angle_stick(1,j)==remove_stick_mac(k)  
            flag=true;
            break;
        end
    end      
    if (flag==false)
         reduced_column_angle_stick(1,v)=angle_stick(1,j);
       [reduced_column_angle_stick(2:length(index_real),v)]=[reduced_row_deltaLength_stick(2:length(index_real),j)];
       index_real_c(1,v)=angle_stick(1,j)
       v=v+1; 
    end
end

reduced_column_angle_stick(:,1)=(index_real_c)';
reduced_angle_stick_mac=reduced_column_angle_stick

% *****************************************************************
% *****************************************************************

% delete row for deltaLength stick matrix

v=1;
for i=1:stick_number
    flag=false;
    for j=1:L 
    
        if deltaLength_stick(i,1)==remove_stick_mac(j)
            flag=true;
            break;
        end
    end      
    if (flag==false)
        reduced_row_deltaLength_stick(v,1)=deltaLength_stick(i,1);
       [reduced_row_deltaLength_stick(v,1:stick_number)]=[deltaLength_stick(i,1:stick_number)];
       index_real(v)=deltaLength_stick(i,1)
       v=v+1; 
    end
end


% delete column for deltaLength stick matrix

v=1;
for j=1:stick_number
    flag=false
    for k=1:L 
    
        if deltaLength_stick(1,j)==remove_stick_mac(k)
            flag=true;
            break;
        end
    end      
    if (flag==false)
         reduced_column_deltaLength_stick(1,v)=deltaLength_stick(1,j);
       [reduced_column_deltaLength_stick(2:length(index_real),v)]=[reduced_row_deltaLength_stick(2:length(index_real),j)];
       index_real_c(1,v)=deltaLength_stick(1,j)
       v=v+1; 
    end
end

reduced_column_deltaLength_stick(:,1)=(index_real_c)';
reduced_deltaLength_stick_mac=reduced_column_deltaLength_stick


% *****************************************************************
% *****************************************************************

% delete row for Euclidean stick matrix

v=1;
for i=1:stick_number
    flag=false;
    for j=1:L 
    
        if Euclidean_stick(i,1)==remove_stick_mac(j) 
            flag=true;
            break;
        end
    end      
    if (flag==false)
        reduced_row_Euclidean_stick(v,1)=Euclidean_stick(i,1);
       [reduced_row_Euclidean_stick(v,1:stick_number)]=[Euclidean_stick(i,1:stick_number)];
       index_real(v)=Euclidean_stick(i,1)
       v=v+1; 
    end
end


% delete column for Euclidean stick matrix

v=1;
for j=1:stick_number
    flag=false
    for k=1:L 
    
        if Euclidean_stick(1,j)==remove_stick_mac(k)  
            flag=true;
            break;
        end
    end      
    if (flag==false)
         reduced_column_Euclidean_stick(1,v)=Euclidean_stick(1,j);
       [reduced_column_Euclidean_stick(2:length(index_real),v)]=[reduced_row_Euclidean_stick(2:length(index_real),j)];
       index_real_c(1,v)=Euclidean_stick(1,j)
       v=v+1; 
    end
end

reduced_column_Euclidean_stick(:,1)=(index_real_c)';
reduced_Euclidean_stick_mac=reduced_column_Euclidean_stick

end

