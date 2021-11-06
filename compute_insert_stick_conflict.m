function [flag_conflict,ReExtend_angle_stick,ReExtend_deltaLength_stick,ReExtend_Euclidean_stick] =compute_insert_stick_conflict(flag_conflict,conflict_stick,stick_number,first_angle_stick,reduced_angle_stick_bhat,first_deltaLength_stick,reduced_deltaLength_stick_bhat,first_Euclidean_stick,reduced_Euclidean_stick_bhat);


% insert conflict row for angle stick matrix

ss=size(reduced_angle_stick_bhat)

if  flag_conflict==true
    visited=false;
    v=2;
    t=2;
    k=1
    for i=1:stick_number
        
        if (i==conflict_stick) && (visited==false)
            ReExtend_angle_stick(v,1)=conflict_stick
            for j=1:ss(1)-1
                p=reduced_angle_stick_bhat(j+1,1)
                [ReExtend_angle_stick(v,t)] =first_angle_stick(i+1,p+1)
                t=t+1;
            end
            visited=true;
            v=v+1;
        else
            
            if (reduced_angle_stick_bhat(k+1,1)<=conflict_stick)
                [ReExtend_angle_stick(v,:)]=[reduced_angle_stick_bhat(k+1,1:stick_number-1)];
                v=v+1;
                k=k+1;
            else
                if (reduced_angle_stick_bhat(k+1,1)>conflict_stick) && visited==true
                    [ReExtend_angle_stick(v,:)]=[reduced_angle_stick_bhat(k+1,1:stick_number-1)];
                    v=v+1;
                    k=k+1;
                    
                 % insert new code
                else
                   
                    if (reduced_angle_stick_bhat(k+1,1)>conflict_stick)
                        ReExtend_angle_stick(v,1)=conflict_stick
                        for j=1:ss(1)-1
                            p=reduced_angle_stick_bhat(j+1,1)
                            [ReExtend_angle_stick(v,t)] =first_angle_stick(conflict_stick+1,p+1)
                            t=t+1;
                        end
                        visited=true;
                        v=v+1
                        [ReExtend_angle_stick(v,:)]=[reduced_angle_stick_bhat(k+1,1:stick_number-1)];
                        v=v+1;
                        k=k+1;
                    end 
                    
                    % new.....
                    
                end    %reduced_angle_stick_bhat(k+1,1)>conflict_stick) && visited==true
               
                
                
            end
        end
        s_test=size(ReExtend_angle_stick)
        if s_test(1)==ss+1
            break;
        end
    end
    
% insert conflict column for angle stick matrix

 ss2=size(ReExtend_angle_stick);
    visited=false;
    size2=size(ReExtend_angle_stick)
    v=1;
    t=2;
    k=1
    s=2
   ReExtend_angle_stick_column(:,1) =[ReExtend_angle_stick(:,1)] % copy column 1

    for i=1:stick_number
        if (i==conflict_stick) && (visited==false)
            ReExtend_angle_stick_column(1,s)=conflict_stick
            for j=2:ss2(1)
                p=ReExtend_angle_stick(j,1)
                [ReExtend_angle_stick_column(t,s)] =first_angle_stick(p+1,s+1)
                t=t+1;
            end
            visited=true;
            s=s+1;
        else
            if (reduced_angle_stick_bhat(1,k+1)<=conflict_stick)
                q=reduced_angle_stick_bhat(1,k+1)
                ReExtend_angle_stick_column(v,s)=q
                [ReExtend_angle_stick_column(v+1:size2(1),s)]= [ReExtend_angle_stick(v+1:size2(1),s)];
                s=s+1;
                k=k+1;
            else
                if (reduced_angle_stick_bhat(1,k+1)>conflict_stick) && visited==true
                    q=reduced_angle_stick_bhat(1,k+1)
                    ReExtend_angle_stick_column(v,s)=q
                    [ReExtend_angle_stick_column(v+1:size2(1),s)]=[ReExtend_angle_stick(v+1:size2(1),s-1)];
                    s=s+1;
                    k=k+1;
                    
                     % insert new code
                else
                    
                    if (reduced_angle_stick_bhat(1,k+1)>conflict_stick)
                        ReExtend_angle_stick_column(1,s)=conflict_stick
                        for j=2:ss2(1)
                            p=ReExtend_angle_stick(j,1)
                            [ReExtend_angle_stick_column(t,s)] =first_angle_stick(p+1,conflict_stick+1)
                            t=t+1;
                        end
                        visited=true;
                        s=s+1;
                    end 
                    
                    % new.....
                end
                
            end
        end
        
     s_test=size(ReExtend_angle_stick_column)
     if s_test(2)==ss+1
         break;
     end
     
    end    % for
    
end

ReExtend_angle_stick=[ReExtend_angle_stick_column];

% insert conflict row for deltaLength stick matrix


ss=size(reduced_deltaLength_stick_bhat)

if  flag_conflict==true
    visited=false;
    v=2;
    t=2;
    k=1
    for i=1:stick_number
        if (i==conflict_stick) && (visited==false)
            ReExtend_deltaLength_stick(v,1)=conflict_stick
            for j=1:ss(1)-1
                p=reduced_deltaLength_stick_bhat(j+1,1)
                [ReExtend_deltaLength_stick(v,t)] =first_deltaLength_stick(i+1,p+1)
                t=t+1;
            end
            visited=true;
            v=v+1;
        else
            
            if (reduced_deltaLength_stick_bhat(k+1,1)<=conflict_stick)
                [ReExtend_deltaLength_stick(v,:)]=[reduced_deltaLength_stick_bhat(k+1,1:stick_number-1)];
                v=v+1;
                k=k+1;
            else
                if (reduced_deltaLength_stick_bhat(k+1,1)>conflict_stick) && visited==true
                    [ReExtend_deltaLength_stick(v,:)]=[reduced_deltaLength_stick_bhat(k+1,1:stick_number-1)];
                    v=v+1;
                    k=k+1;
                    
                    % insert new code
                else
                   
                    if (reduced_deltaLength_stick_bhat(k+1,1)>conflict_stick)
                        ReExtend_deltaLength_stick(v,1)=conflict_stick
                        for j=1:ss(1)-1
                            p=reduced_deltaLength_stick_bhat(j+1,1)
                            [ReExtend_deltaLength_stick(v,t)] =first_deltaLength_stick(conflict_stick+1,p+1)
                            t=t+1;
                        end
                        visited=true;
                        v=v+1
                        [ReExtend_deltaLength_stick(v,:)]=[reduced_deltaLength_stick_bhat(k+1,1:stick_number-1)];
                        v=v+1;
                        k=k+1;
                    end 
                    
                    % new.....
                    
                end
                
            end
        end
        s_test=size(ReExtend_deltaLength_stick)
        if s_test(1)==ss+1
            break;
        end
    end



% insert conflict column for deltaLength stick matrix


ss2=size(ReExtend_deltaLength_stick);
    visited=false;
    size2=size(ReExtend_deltaLength_stick)
    v=1;
    t=2;
    k=1
    s=2
   ReExtend_deltaLength_stick_column(:,1) =[ReExtend_deltaLength_stick(:,1)] % copy column 1

    for i=1:stick_number
        if (i==conflict_stick) && (visited==false)
            ReExtend_deltaLength_stick_column(1,s)=conflict_stick
            for j=2:ss2(1)
                p=ReExtend_deltaLength_stick(j,1)
                [ReExtend_deltaLength_stick_column(t,s)] =first_deltaLength_stick(p+1,s+1)
                t=t+1;
            end
            visited=true;
            s=s+1;
        else
            if (reduced_deltaLength_stick_bhat(1,k+1)<=conflict_stick)
                q=reduced_deltaLength_stick_bhat(1,k+1)
                ReExtend_deltaLength_stick_column(v,s)=q
                [ReExtend_deltaLength_stick_column(v+1:size2(1),s)]= [ReExtend_deltaLength_stick(v+1:size2(1),s)];
                s=s+1;
                k=k+1;
            else
                if (reduced_deltaLength_stick_bhat(1,k+1)>conflict_stick) && visited==true
                    q=reduced_deltaLength_stick_bhat(1,k+1)
                    ReExtend_deltaLength_stick_column(v,s)=q
                    [ReExtend_deltaLength_stick_column(v+1:size2(1),s)]=[ReExtend_deltaLength_stick(v+1:size2(1),s-1)];
                    s=s+1;
                    k=k+1;
                    
                     % insert new code
                else
                    
                    if (reduced_deltaLength_stick_bhat(1,k+1)>conflict_stick)
                        ReExtend_deltaLength_stick_column(1,s)=conflict_stick
                        for j=2:ss2(1)
                            p=ReExtend_deltaLength_stick(j,1)
                            [ReExtend_deltaLength_stick_column(t,s)] =first_deltaLength_stick(p+1,conflict_stick+1)
                            t=t+1;
                        end
                        visited=true;
                        s=s+1;
                    end 
                    
                    % new.....
                end
                
            end
        end
        
     s_test=size(ReExtend_deltaLength_stick_column)
     if s_test(2)==ss+1
         break;
     end
     
    end    % for
    
end

ReExtend_deltaLength_stick=ReExtend_deltaLength_stick_column;

% insert conflict row for Euclidean stick matrix

ss=size(reduced_Euclidean_stick_bhat)

if  flag_conflict==true
    visited=false;
    v=2;
    t=2;
    k=1
    for i=1:stick_number
        if (i==conflict_stick) && (visited==false)
            ReExtend_Euclidean_stick(v,1)=conflict_stick
            for j=1:ss(1)-1
                p=reduced_Euclidean_stick_bhat(j+1,1)
                [ReExtend_Euclidean_stick(v,t)] =first_Euclidean_stick(i+1,p+1)
                t=t+1;
            end
            visited=true;
            v=v+1;
        else
            
            if (reduced_Euclidean_stick_bhat(k+1,1)<=conflict_stick)
                [ReExtend_Euclidean_stick(v,:)]=[reduced_Euclidean_stick_bhat(k+1,1:stick_number-1)];
                v=v+1;
                k=k+1;
            else
                if (reduced_Euclidean_stick_bhat(k+1,1)>conflict_stick) && visited==true
                    [ReExtend_Euclidean_stick(v,:)]=[reduced_Euclidean_stick_bhat(k+1,1:stick_number-1)];
                    v=v+1;
                    k=k+1;
                    % insert new code
                else
                   
                    if (reduced_Euclidean_stick_bhat(k+1,1)>conflict_stick)
                        ReExtend_Euclidean_stick(v,1)=conflict_stick
                        for j=1:ss(1)-1
                            p=reduced_Euclidean_stick_bhat(j+1,1)
                            [ReExtend_Euclidean_stick(v,t)] =first_Euclidean_stick(conflict_stick+1,p+1)
                            t=t+1;
                        end
                        visited=true;
                        v=v+1
                        [ReExtend_Euclidean_stick(v,:)]=[reduced_Euclidean_stick_bhat(k+1,1:stick_number-1)];
                        v=v+1;
                        k=k+1;
                    end 
                    
                    % new.....
                    
                end
                
            end
        end
        s_test=size(ReExtend_Euclidean_stick)
        if s_test(1)==ss+1
            break;
        end
    end



% insert conflict column for Euclidean stick matrix

ss2=size(ReExtend_Euclidean_stick);
    visited=false;
    size2=size(ReExtend_Euclidean_stick)
    v=1;
    t=2;
    k=1
    s=2
   ReExtend_Euclidean_stick_column(:,1) =[ReExtend_Euclidean_stick(:,1)] % copy column 1

    for i=1:stick_number
        if (i==conflict_stick) && (visited==false)
            ReExtend_Euclidean_stick_column(1,s)=conflict_stick
            for j=2:ss2(1)
                p=ReExtend_Euclidean_stick(j,1)
                [ReExtend_Euclidean_stick_column(t,s)] =first_Euclidean_stick(p+1,s+1)
                t=t+1;
            end
            visited=true;
            s=s+1;
        else
            if (reduced_Euclidean_stick_bhat(1,k+1)<=conflict_stick)
                q=reduced_Euclidean_stick_bhat(1,k+1)
                ReExtend_Euclidean_stick_column(v,s)=q
                [ReExtend_Euclidean_stick_column(v+1:size2(1),s)]= [ReExtend_Euclidean_stick(v+1:size2(1),s)];
                s=s+1;
                k=k+1;
            else
                if (reduced_Euclidean_stick_bhat(1,k+1)>conflict_stick) && visited==true
                    q=reduced_Euclidean_stick_bhat(1,k+1)
                    ReExtend_Euclidean_stick_column(v,s)=q
                    [ReExtend_Euclidean_stick_column(v+1:size2(1),s)]=[ReExtend_Euclidean_stick(v+1:size2(1),s-1)];
                    s=s+1;
                    k=k+1;
                    
                     % insert new code
                else
                    
                    if (reduced_Euclidean_stick_bhat(1,k+1)>conflict_stick)
                        ReExtend_Euclidean_stick_column(1,s)=conflict_stick
                        for j=2:ss2(1)
                            p=ReExtend_Euclidean_stick(j,1)
                            [ReExtend_Euclidean_stick_column(t,s)] =first_Euclidean_stick(p+1,conflict_stick+1)
                            t=t+1;
                        end
                        visited=true;
                        s=s+1;
                    end 
                    
                    % new.....
                end
                
            end
        end
        
     s_test=size(ReExtend_Euclidean_stick_column)
     if s_test(2)==ss+1
         break;
     end
     
    end    % for
    
end
ReExtend_Euclidean_stick=ReExtend_Euclidean_stick_column;
flag_conflict=false;
end    % function

