function [final_index_matrix_new ] = Adjust_index(index_matrix,helix_number,remove_helix_index )

% construct array from structure

for i=1:helix_number
    
index_matrix_array(i,1)=index_matrix(i).num_helix
index_matrix_array(i,2) =index_matrix(i).num_stick

end

% start process
    k=1;
    j=1;
    
    
    for s=1:helix_number
        for i=1:helix_number
            if index_matrix_array(i,1)==k
                index_matrix_new(j,1)=index_matrix_array(i,1);
                index_matrix_new(j,2)=index_matrix_array(i,2);
                k=k+1;
                j=j+1;
            end
        end
    end
    s_remove=length(remove_helix_index);
    
    
    j=1;
    for p=1:s_remove
        index_matrix_new(helix_number+p,1)=helix_number+j;
        index_matrix_new(helix_number+p,2)=helix_number+j;
        j=j+1;
    end  
    
    w=1;
    count=1;
    remove_helix_index=sort(remove_helix_index);
    j=1;
    cnt=1;
    p=1;
    flag=0;
    f=1;
    ss=0;
    c=remove_helix_index(j)
    for i=1:helix_number+length(remove_helix_index)
        if (index_matrix_new(i,1)<c) && (count==1)
            final_index_matrix(w,1)=index_matrix_new(w,1);
            ss=ss+1;
            final_index_matrix(w,2)=index_matrix_new(ss,2);
            w=w+1;
            
        end
        if w==c
            final_index_matrix(w,1)=c
            final_index_matrix(w,2)=0
            w=w+1;
            flag=1;
            count=count+1;
            
            if j==s_remove
                j=j-1;
                flag=2;
            end
            
        end
        
        if w>length(index_matrix_new)
            break;
        end
        
        if (s_remove>1)
            if (index_matrix_new(w,1)>remove_helix_index(j)) && index_matrix_new(w,1)< remove_helix_index(j+1) && flag==1
                final_index_matrix(w,1)=index_matrix_new(w,1);
                ss=ss+1;
                final_index_matrix(w,2)=index_matrix_new(ss,2)
                w=w+1
                
            end
        end
        
        
        if (s_remove>1)
            if (index_matrix_new(w,1)>remove_helix_index(s_remove))
                final_index_matrix(w,1)=index_matrix_new(w,1);
                ss=ss+1;
                final_index_matrix(w,2)=index_matrix_new(ss,2)
                w=w+1
                
            end
        end
        
        if (s_remove>1)
            if (remove_helix_index(j+1)==w)
                c=remove_helix_index(j+1);
                p=p+1;
                j=j+1;
            end
        end
        
        
    end

    for i=1:helix_number+length(remove_helix_index)
       final_index_matrix_new(i).num_helix =final_index_matrix(i,1)
       final_index_matrix_new(i).num_stick =final_index_matrix(i,2)

    end
    

end

