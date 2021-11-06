function [ index_angle_bhattacharyya,extend_distance_bhattacharyya ] = compute_angle_bhattacharyya(extend_angle_helix,extend_angle_stick,helix_number,stick_number)

% for i=1:helix_number+1
%      sort_extend_angle_helix(i,:)=sort(extend_angle_helix(i,:));
%      sort_extend_angle_stick(i,:)=sort(extend_angle_stick(i,:));
%      
% end


for i=2:helix_number
   p= extend_angle_helix(i,2:helix_number);

    for j=2:stick_number
       q= extend_angle_stick(j,2:stick_number);
       %extend_distance_bhattacharyya(i,j)=bhattacharyya(p,q);    % compute bhattacharyya distance
       extend_distance_bhattacharyya(i,j)=bhattacharyya(p,q);
       
    end
end
% insert index of row and column for computing correct index after removing

extend_distance_bhattacharyya(2:helix_number,1)=extend_angle_helix(2:helix_number,1);
extend_distance_bhattacharyya(1,2:helix_number)=extend_angle_stick(1,2:helix_number);

for i=2:helix_number
        d=extend_distance_bhattacharyya(i,2:helix_number);
        [minimum,index_bat] = min(d(:));
        index_angle_bhattacharyya(i-1).num_helix=extend_distance_bhattacharyya(i,1);
        index_angle_bhattacharyya(i-1).num_stick=extend_distance_bhattacharyya(1,index_bat+1);
        index_angle_bhattacharyya(i-1).min=minimum;
        
         
end       





end

