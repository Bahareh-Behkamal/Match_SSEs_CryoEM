function [ index_deltaLength_mac,mac_answer ] = compute_deltaLength_mac( extend_length_helix,extend_length_stick,helix_number,stick_number)


for i=2:helix_number
   p= extend_length_helix(i,2:helix_number);
   p=sort(p);
    for j=2:stick_number
       q= extend_length_stick(j,2:stick_number);
       q=sort(q);
       mac_answer(i,j)=mac(p',q');
    end
end
      
mac_answer(2:helix_number,1)=extend_length_helix(2:helix_number,1);
mac_answer(1,2:helix_number)=extend_length_stick(1,2:helix_number);

for i=2:helix_number
        m=mac_answer(i,2:helix_number);
        [maximum,index] = max(m(:));
        index_deltaLength_mac(i-1).num_helix=mac_answer(i,1);
        index_deltaLength_mac(i-1).num_stick=mac_answer(1,index+1);
        index_deltaLength_mac(i-1).max=maximum;
end


end

