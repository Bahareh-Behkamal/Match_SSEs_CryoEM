function [final_correspondence ] = Adjust_index_RVA( index_correspondence,helix_number,remove_helix_index )

    k=1;
    j=1;  
    for s=1:helix_number
        for i=1:helix_number
            if index_correspondence(i,1)==k
                index_correspondence_new(j,1)=index_correspondence(i,1);
                index_correspondence_new(j,2)=index_correspondence(i,2);
                k=k+1;
                j=j+1;
            end
        end
    end
    s_remove=length(remove_helix_index);
    
    
    j=1;
    for p=1:s_remove
        index_correspondence_new(helix_number+p,1)=helix_number+j;
        index_correspondence_new(helix_number+p,2)=helix_number+j;
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
        if (index_correspondence_new(i,1)<c) && (count==1)
            final_correspondence(w,1)=index_correspondence_new(w,1);
            ss=ss+1;
            final_correspondence(w,2)=index_correspondence_new(ss,2);
            w=w+1;
            
        end
        if w==c
            final_correspondence(w,1)=c
            final_correspondence(w,2)=0
            w=w+1;
            flag=1;
            count=count+1;
            
            if j==s_remove
                j=j-1;
                flag=2;
            end
            
        end
        
        if w>length(index_correspondence_new)
            break;
        end
        
        if (s_remove>1)
            if (index_correspondence_new(w,1)>remove_helix_index(j)) && index_correspondence_new(w,1)< remove_helix_index(j+1) && flag==1
                final_correspondence(w,1)=index_correspondence_new(w,1);
                ss=ss+1;
                final_correspondence(w,2)=index_correspondence_new(ss,2)
                w=w+1
                
            end
        end
        
        
        if (s_remove>1)
            if (index_correspondence_new(w,1)>remove_helix_index(s_remove))
                final_correspondence(w,1)=index_correspondence_new(w,1);
                ss=ss+1;
                final_correspondence(w,2)=index_correspondence_new(ss,2)
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

end

