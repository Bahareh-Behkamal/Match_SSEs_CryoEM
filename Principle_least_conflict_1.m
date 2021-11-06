

% This function select one pair with least conflict to other pairs.

function [min,least_helix,least_stick ] = Principle_least_conflict_1( index_angle,index_deltaLength,index_Euclidean,fix_helix_number )


for i=1:fix_helix_number
    all_pairs(i,1)=index_angle(i).num_helix;
    all_pairs(i,2)=index_angle(i).num_stick;
    all_pairs(i+fix_helix_number,1)=index_deltaLength(i).num_helix;
    all_pairs(i+fix_helix_number,2)=index_deltaLength(i).num_stick;
    all_pairs(i+(2*fix_helix_number),1)=index_Euclidean(i).num_helix;
    all_pairs(i+(2*fix_helix_number),2)=index_Euclidean(i).num_stick;
    
end

min=1000;
for i=1:(3*fix_helix_number)
    num=0;
    p=1;
    x=all_pairs(i,1);
    y=all_pairs(i,2);
    
     % for helix to stick
    for j=1:(3*fix_helix_number)
        
        if x==all_pairs(j,1) && y~=all_pairs(j,2) && p==1
            
            conflict_mat(p).helix=all_pairs(j,1);
            conflict_mat(p).stick=all_pairs(j,2);
            p=p+1;
            num=num+1;       
        
        elseif x==all_pairs(j,1) && y~=all_pairs(j,2) && p~=1
            flag=1;
            a=all_pairs(j,1);
            b=all_pairs(j,2);
            for s=1:p-1
                %         m=find([conflict_mat(p).helix]==a)
                %         n=find([conflict_mat(p).stick]==b)
                if a==conflict_mat(s).helix && b==conflict_mat(s).stick
                    flag=0;
                end
            end
            if flag==1
                conflict_mat(p).helix=a;
                conflict_mat(p).stick=b;
                p=p+1;
                num=num+1;
            end
        end
    end
    
    % for stick to helix
    q=1;
    p=p-1;
    for k=1:(3*fix_helix_number)
        
        if y==all_pairs(k,2) && x~=all_pairs(k,1) && q==1
            q=p+q;
            conflict_mat(q).helix=all_pairs(k,1);
            conflict_mat(q).stick=all_pairs(k,2) ; 
            num=num+1;       
        
        elseif y==all_pairs(k,2) && x~=all_pairs(k,1) && q~=1
            flag=1;
            a=all_pairs(k,1);
            b=all_pairs(k,2);
            for s=1:q
                %         m=find([conflict_mat(p).helix]==a)
                %         n=find([conflict_mat(p).stick]==b)
                if a==conflict_mat(s).helix && b==conflict_mat(s).stick
                    flag=0;
                end
            end
            if flag==1
                  q=q+1;
                conflict_mat(q).helix=a;
                conflict_mat(q).stick=b;
                num=num+1;
            end
        end
    end
  
    result_conflict(i).mat=conflict_mat;
    conflict_mat=[];
    
    if num<min  
       min=num;
       least_helix=x;
       least_stick=y;
    end
        
end







