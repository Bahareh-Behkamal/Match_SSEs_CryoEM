function [ vote_matrix_MAC_helix,remove_helix_MAC,remove_stick_MAC ] = vote2_algorithm_MAC(index_angle_MAC,index_deltaLength_MAC,index_Euclidean_MAC);

size1=size(index_angle_MAC);
vote_matrix_MAC_helix=[];
vote_matrix_MAC_stick=[];


% compare angle with deltaLength and Euclidean
for i=1:size1(2)
    if ((index_angle_MAC(i).num_helix==index_deltaLength_MAC(i).num_helix) && (index_angle_MAC(i).num_stick==index_deltaLength_MAC(i).num_stick))|| ((index_angle_MAC(i).num_helix==index_Euclidean_MAC(i).num_helix) && (index_angle_MAC(i).num_stick==index_Euclidean_MAC(i).num_stick))
        vote_matrix_MAC_helix=[vote_matrix_MAC_helix  index_angle_MAC(i).num_helix];
        vote_matrix_MAC_stick=[vote_matrix_MAC_stick  index_angle_MAC(i).num_stick];
        
    end
end


for i=1:size1(2)
    if ((index_deltaLength_MAC(i).num_helix==index_angle_MAC(i).num_helix) && (index_deltaLength_MAC(i).num_stick==index_angle_MAC(i).num_stick))|| ((index_deltaLength_MAC(i).num_helix==index_Euclidean_MAC(i).num_helix) && (index_deltaLength_MAC(i).num_stick==index_Euclidean_MAC(i).num_stick)) 
       c=ismember(index_deltaLength_MAC(i).num_helix,vote_matrix_MAC_helix); 
       if c==0
        vote_matrix_MAC_helix=[vote_matrix_MAC_helix  index_deltaLength_MAC(i).num_helix];
        vote_matrix_MAC_stick=[vote_matrix_MAC_stick  index_deltaLength_MAC(i).num_stick];
       end
    end
end


size_vote=size(vote_matrix_MAC_helix);

c=1;
remove_helix_MAC=[];
remove_stick_MAC=[];
for i=1:size_vote(2)
    remove_helix_MAC(c)=vote_matrix_MAC_helix(i);
    remove_stick_MAC(c)=vote_matrix_MAC_stick(i);
    c=c+1;
end




end
