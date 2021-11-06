function [ index_angle_mac,mac_answer] = compute_angle_mac( extend_angle_helix,extend_angle_stick,helix_number,stick_number)


for i=2:helix_number
   p= extend_angle_helix(i,2:helix_number);
    p=sort(p);
    for j=2:stick_number
       q= extend_angle_stick(j,2:helix_number);
        q=sort(q);
       mac_answer(i,j)=mac(p',q');
    end
end


% insert index of row and column for computing correct index after removing

mac_answer(2:helix_number,1)=extend_angle_helix(2:helix_number,1);
mac_answer(1,2:helix_number)=extend_angle_stick(1,2:helix_number);

for i=2:helix_number
        m=mac_answer(i,2:helix_number);
        [maximum,index] = max(m(:));
        index_angle_mac(i-1).num_helix=mac_answer(i,1);
        index_angle_mac(i-1).num_stick=mac_answer(1,index+1);
        index_angle_mac(i-1).max=maximum;
end

% before adjust correct index:
%         index_angle_mac(i-1).num_helix=i-1;
%         index_angle_mac(i-1).num_stick=index;
%         index_angle_mac(i-1).max=maximum;



end

