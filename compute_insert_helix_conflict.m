function [flag_conflict,ReExtend_angle_helix,ReExtend_deltaLength_helix,ReExtend_Euclidean_helix] =compute_insert_helix_conflict(flag_conflict,conflict_helix,helix_number,first_angle_helix,reduced_angle_helix_bhat,first_deltaLength_helix,reduced_deltaLength_helix_bhat,first_Euclidean_helix,reduced_Euclidean_helix_bhat);


% insert conflict row for angle helix matrix

ss=size(reduced_angle_helix_bhat)

if  flag_conflict==true
    visited=false;
    v=2;
    t=2;
    k=1
    for i=1:helix_number
        if (i==conflict_helix) && (visited==false)
            ReExtend_angle_helix(v,1)=conflict_helix
            for j=1:ss(1)-1
                p=reduced_angle_helix_bhat(j+1,1)
                [ReExtend_angle_helix(v,t)] =first_angle_helix(i+1,p+1)
                t=t+1;
            end
            visited=true;
            v=v+1;
        else
            
            if (reduced_angle_helix_bhat(k+1,1)<=conflict_helix)
                [ReExtend_angle_helix(v,:)]=[reduced_angle_helix_bhat(k+1,1:helix_number-1)];
                v=v+1;
                k=k+1;
            else
                if (reduced_angle_helix_bhat(k+1,1)>conflict_helix) && visited==true
                    [ReExtend_angle_helix(v,:)]=[reduced_angle_helix_bhat(k+1,1:helix_number-1)];
                    v=v+1;
                    k=k+1;
                    
                     % insert new code
                else
                   
                    if (reduced_angle_helix_bhat(k+1,1)>conflict_helix)
                        ReExtend_angle_helix(v,1)=conflict_helix
                        for j=1:ss(1)-1
                            p=reduced_angle_helix_bhat(j+1,1)
                            [ReExtend_angle_helix(v,t)] =first_angle_helix(conflict_helix+1,p+1)
                            t=t+1;
                        end
                        v=v+1
                        [ReExtend_angle_helix(v,:)]=[reduced_angle_helix_bhat(k+1,1:helix_number-1)];
                        v=v+1;
                        k=k+1;
                        visited=true;
                    end 
                    
                    % new.....
                end
                
            end    %reduced_angle_helix_bhat(k+1,1)<=conflict_helix
        end
        s_test=size(ReExtend_angle_helix)
        if s_test(1)==ss+1
            break;
        end
    end
    
% insert conflict column for angle helix matrix

 ss2=size(ReExtend_angle_helix);
    visited=false;
    size2=size(ReExtend_angle_helix)
    v=1;
    t=2;
    k=1
    s=2
   ReExtend_angle_helix_column(:,1) =[ReExtend_angle_helix(:,1)] % copy column 1

    for i=1:helix_number
        if (i==conflict_helix) && (visited==false)
            ReExtend_angle_helix_column(1,s)=conflict_helix
            for j=2:ss2(1)
                p=ReExtend_angle_helix(j,1)
                [ReExtend_angle_helix_column(t,s)] =first_angle_helix(p+1,s+1)
                t=t+1;
            end
            visited=true;
            s=s+1;
        else
            if (reduced_angle_helix_bhat(1,k+1)<=conflict_helix)
                q=reduced_angle_helix_bhat(1,k+1)
                ReExtend_angle_helix_column(v,s)=q
                [ReExtend_angle_helix_column(v+1:size2(1),s)]= [ReExtend_angle_helix(v+1:size2(1),s)];
                s=s+1;
                k=k+1;
            else
                if (reduced_angle_helix_bhat(1,k+1)>conflict_helix) && visited==true
                    q=reduced_angle_helix_bhat(1,k+1)
                    ReExtend_angle_helix_column(v,s)=q
                    [ReExtend_angle_helix_column(v+1:size2(1),s)]=[ReExtend_angle_helix(v+1:size2(1),s-1)];
                    s=s+1;
                    k=k+1;
                    
                          % insert new code
                else
                    
                    if (reduced_angle_helix_bhat(1,k+1)>conflict_helix)
                        ReExtend_angle_helix_column(1,s)=conflict_helix
                        for j=2:ss2(1)
                            p=ReExtend_angle_helix(j,1)
                            [ReExtend_angle_helix_column(t,s)] =first_angle_helix(p+1,conflict_helix+1)
                            t=t+1;
                        end
                        visited=true;
                        s=s+1;
                    end 
                    
                    % new.....
                    
                end
                
            end
        end
        
     s_test=size(ReExtend_angle_helix_column)
     if s_test(2)==ss+1
         break;
     end
     
    end    % for
    
end

ReExtend_angle_helix=[ReExtend_angle_helix_column];

% insert conflict row for deltaLength helix matrix


ss=size(reduced_deltaLength_helix_bhat)

if  flag_conflict==true
    visited=false;
    v=2;
    t=2;
    k=1
    for i=1:helix_number
        if (i==conflict_helix) && (visited==false)
            ReExtend_deltaLength_helix(v,1)=conflict_helix
            for j=1:ss(1)-1
                p=reduced_deltaLength_helix_bhat(j+1,1)
                [ReExtend_deltaLength_helix(v,t)] =first_deltaLength_helix(i+1,p+1)
                t=t+1;
            end
            visited=true;
            v=v+1;
        else
            
            if (reduced_deltaLength_helix_bhat(k+1,1)<=conflict_helix)
                [ReExtend_deltaLength_helix(v,:)]=[reduced_deltaLength_helix_bhat(k+1,1:helix_number-1)];
                v=v+1;
                k=k+1;
            else
                if (reduced_deltaLength_helix_bhat(k+1,1)>conflict_helix) && visited==true
                    [ReExtend_deltaLength_helix(v,:)]=[reduced_deltaLength_helix_bhat(k+1,1:helix_number-1)];
                    v=v+1;
                    k=k+1;
                    
                     % insert new code
                else
                   
                    if (reduced_deltaLength_helix_bhat(k+1,1)>conflict_helix)
                        ReExtend_deltaLength_helix(v,1)=conflict_helix
                        for j=1:ss(1)-1
                            p=reduced_deltaLength_helix_bhat(j+1,1)
                            [ReExtend_deltaLength_helix(v,t)] =first_deltaLength_helix(conflict_helix+1,p+1)
                            t=t+1;
                        end
                        visited=true;
                        v=v+1
                        [ReExtend_deltaLength_helix(v,:)]=[reduced_deltaLength_helix_bhat(k+1,1:helix_number-1)];
                        v=v+1;
                        k=k+1;
                    end 
                    
                    % new.....
                end
                
            end
        end
        s_test=size(ReExtend_deltaLength_helix)
        if s_test(1)==ss+1
            break;
        end
    end



% insert conflict column for deltaLength helix matrix


ss2=size(ReExtend_deltaLength_helix);
    visited=false;
    size2=size(ReExtend_deltaLength_helix)
    v=1;
    t=2;
    k=1
    s=2
   ReExtend_deltaLength_helix_column(:,1) =[ReExtend_deltaLength_helix(:,1)] % copy column 1

    for i=1:helix_number
        if (i==conflict_helix) && (visited==false)
            ReExtend_deltaLength_helix_column(1,s)=conflict_helix
            for j=2:ss2(1)
                p=ReExtend_deltaLength_helix(j,1)
                [ReExtend_deltaLength_helix_column(t,s)] =first_deltaLength_helix(p+1,s+1)
                t=t+1;
            end
            visited=true;
            s=s+1;
        else
            if (reduced_deltaLength_helix_bhat(1,k+1)<=conflict_helix)
                q=reduced_deltaLength_helix_bhat(1,k+1)
                ReExtend_deltaLength_helix_column(v,s)=q
                [ReExtend_deltaLength_helix_column(v+1:size2(1),s)]= [ReExtend_deltaLength_helix(v+1:size2(1),s)];
                s=s+1;
                k=k+1;
            else
                if (reduced_deltaLength_helix_bhat(1,k+1)>conflict_helix) && visited==true
                    q=reduced_deltaLength_helix_bhat(1,k+1)
                    ReExtend_deltaLength_helix_column(v,s)=q
                    [ReExtend_deltaLength_helix_column(v+1:size2(1),s)]=[ReExtend_deltaLength_helix(v+1:size2(1),s-1)];
                    s=s+1;
                    k=k+1;
                    
                     % insert new code
                else
                    
                    if (reduced_deltaLength_helix_bhat(1,k+1)>conflict_helix)
                        ReExtend_deltaLength_helix_column(1,s)=conflict_helix
                        for j=2:ss2(1)
                            p=ReExtend_deltaLength_helix(j,1)
                            [ReExtend_deltaLength_helix_column(t,s)] =first_deltaLength_helix(p+1,conflict_helix+1)
                            t=t+1;
                        end
                        visited=true;
                        s=s+1;
                    end 
                    
                    % new.....
                end
                
            end
        end
        
     s_test=size(ReExtend_deltaLength_helix_column)
     if s_test(2)==ss+1
         break;
     end
     
    end    % for
    
end

ReExtend_deltaLength_helix=ReExtend_deltaLength_helix_column;

% insert conflict row for Euclidean helix matrix

ss=size(reduced_Euclidean_helix_bhat)

if  flag_conflict==true
    visited=false;
    v=2;
    t=2;
    k=1
    for i=1:helix_number
        if (i==conflict_helix) && (visited==false)
            ReExtend_Euclidean_helix(v,1)=conflict_helix
            for j=1:ss(1)-1
                p=reduced_Euclidean_helix_bhat(j+1,1)
                [ReExtend_Euclidean_helix(v,t)] =first_Euclidean_helix(i+1,p+1)
                t=t+1;
            end
            visited=true;
            v=v+1;
        else
            
            if (reduced_Euclidean_helix_bhat(k+1,1)<=conflict_helix)
                [ReExtend_Euclidean_helix(v,:)]=[reduced_Euclidean_helix_bhat(k+1,1:helix_number-1)];
                v=v+1;
                k=k+1;
            else
                if (reduced_Euclidean_helix_bhat(k+1,1)>conflict_helix) && visited==true
                    [ReExtend_Euclidean_helix(v,:)]=[reduced_Euclidean_helix_bhat(k+1,1:helix_number-1)];
                    v=v+1;
                    k=k+1;
                    
                    % insert new code
                else
                   
                    if (reduced_Euclidean_helix_bhat(k+1,1)>conflict_helix)
                        ReExtend_Euclidean_helix(v,1)=conflict_helix
                        for j=1:ss(1)-1
                            p=reduced_Euclidean_helix_bhat(j+1,1)
                            [ReExtend_Euclidean_helix(v,t)] =first_Euclidean_helix(conflict_helix+1,p+1)
                            t=t+1;
                        end
                        visited=true;
                        v=v+1
                        [ReExtend_Euclidean_helix(v,:)]=[reduced_Euclidean_helix_bhat(k+1,1:helix_number-1)];
                        v=v+1;
                        k=k+1;
                    end 
                    
                    % new.....
                end
                
            end
        end
        s_test=size(ReExtend_Euclidean_helix)
        if s_test(1)==ss+1
            break;
        end
    end



% insert conflict column for Euclidean helix matrix

ss2=size(ReExtend_Euclidean_helix);
    visited=false;
    size2=size(ReExtend_Euclidean_helix)
    v=1;
    t=2;
    k=1
    s=2
   ReExtend_Euclidean_helix_column(:,1) =[ReExtend_Euclidean_helix(:,1)] % copy column 1

    for i=1:helix_number
        if (i==conflict_helix) && (visited==false)
            ReExtend_Euclidean_helix_column(1,s)=conflict_helix
            for j=2:ss2(1)
                p=ReExtend_Euclidean_helix(j,1)
                [ReExtend_Euclidean_helix_column(t,s)] =first_Euclidean_helix(p+1,s+1)
                t=t+1;
            end
            visited=true;
            s=s+1;
        else
            if (reduced_Euclidean_helix_bhat(1,k+1)<=conflict_helix)
                q=reduced_Euclidean_helix_bhat(1,k+1)
                ReExtend_Euclidean_helix_column(v,s)=q
                [ReExtend_Euclidean_helix_column(v+1:size2(1),s)]= [ReExtend_Euclidean_helix(v+1:size2(1),s)];
                s=s+1;
                k=k+1;
            else
                if (reduced_Euclidean_helix_bhat(1,k+1)>conflict_helix) && visited==true
                    q=reduced_Euclidean_helix_bhat(1,k+1)
                    ReExtend_Euclidean_helix_column(v,s)=q
                    [ReExtend_Euclidean_helix_column(v+1:size2(1),s)]=[ReExtend_Euclidean_helix(v+1:size2(1),s-1)];
                    s=s+1;
                    k=k+1;
                    
                  % insert new code
                else
                    
                    if (reduced_Euclidean_helix_bhat(1,k+1)>conflict_helix)
                        ReExtend_Euclidean_helix_column(1,s)=conflict_helix
                        for j=2:ss2(1)
                            p=ReExtend_Euclidean_helix(j,1)
                            [ReExtend_Euclidean_helix_column(t,s)] =first_Euclidean_helix(p+1,conflict_helix+1)
                            t=t+1;
                        end
                        visited=true;
                        s=s+1;
                    end 
                    
                    % new.....  
                end
                
            end
        end
        
     s_test=size(ReExtend_Euclidean_helix_column)
     if s_test(2)==ss+1
         break;
     end
     
    end    % for
    
end
ReExtend_Euclidean_helix=ReExtend_Euclidean_helix_column;
end    % function

