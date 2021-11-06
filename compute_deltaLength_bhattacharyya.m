function [ index_deltaLength_bhattacharyya,extend_distance_bhattacharyya] = compute_deltaLength_bhattacharyya( extend_length_helix,extend_length_stick,helix_number,stick_number)
% for i=1:helix_number
%      sort_length_helix(i,:)=sort(extend_length_helix(i,:));
%      sort_length_stick(i,:)=sort(extend_length_stick(i,:));
%      
% end


for i=2:helix_number
   p= extend_length_helix(i,2:helix_number);
    for j=1:stick_number
       q= extend_length_stick(j,2:helix_number);
       extend_distance_bhattacharyya(i,j)=bhattacharyya(p,q);    % compute bhattacharyya distance
    end
end

% insert index of row and column for computing correct index after removing
extend_distance_bhattacharyya(2:helix_number,1)=extend_length_helix(2:helix_number,1);
extend_distance_bhattacharyya(1,2:helix_number)=extend_length_stick(1,2:helix_number);

for i=2:helix_number
    d=extend_distance_bhattacharyya(i,2:helix_number);
    [minimum,index_bat] = min(d(:));
    index_deltaLength_bhattacharyya(i-1).num_helix=extend_distance_bhattacharyya(i,1);
    index_deltaLength_bhattacharyya(i-1).num_stick=extend_distance_bhattacharyya(1,index_bat+1);
    index_deltaLength_bhattacharyya(i-1).min=minimum;
    
    
    
    
end





end

