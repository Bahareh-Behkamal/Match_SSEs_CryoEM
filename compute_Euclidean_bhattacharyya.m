function [ index_Euclidean_bhattacharyya,extend_distance_bhattacharyya ] = compute_Euclidean_bhattacharyya(extend_Euclidean_helix,extend_Euclidean_stick,helix_number,stick_number )

% for i=1:helix_number
%      sort_Euclidean_helix(i,:)=sort(extend_Euclidean_helix(i,:));
%      sort_Euclidean_stick(i,:)=sort(extend_Euclidean_stick(i,:));
%      
% end


for i=2:helix_number
   p= extend_Euclidean_helix(i,2:helix_number);
    for j=2:stick_number
       q= extend_Euclidean_stick(j,2:helix_number);
       extend_distance_bhattacharyya(i,j)=bhattacharyya(p,q);    % compute bhattacharyya distance
    end
end

% insert index of row and column for computing correct index after removing
extend_distance_bhattacharyya(2:helix_number,1)=extend_Euclidean_helix(2:helix_number,1);
extend_distance_bhattacharyya(1,2:helix_number)=extend_Euclidean_stick(1,2:helix_number);

for i=2:helix_number
    d=extend_distance_bhattacharyya(i,2:helix_number);
    [minimum,index_bat] = min(d(:));
    index_Euclidean_bhattacharyya(i-1).num_helix=extend_distance_bhattacharyya(i,1);
    index_Euclidean_bhattacharyya(i-1).num_stick=extend_distance_bhattacharyya(1,index_bat+1);
    index_Euclidean_bhattacharyya(i-1).min=minimum;
    
end




end

