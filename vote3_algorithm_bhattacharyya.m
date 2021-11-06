function [ vote_matrix_bhattacharyya_helix,remove_helix_bhattacharyya,remove_stick_bhattacharyya ] = vote3_algorithm_bhattacharyya(index_angle_bhattacharyya,index_deltaLength_bhattacharyya,index_Euclidean_bhattacharyya);

size1=size(index_angle_bhattacharyya);
vote_matrix_bhattacharyya_helix=[];
vote_matrix_bhattacharyya_stick=[];


% compare angle with deltaLength and Euclidean
for i=1:size1(2)
    if ((index_angle_bhattacharyya(i).num_helix==index_deltaLength_bhattacharyya(i).num_helix) && (index_angle_bhattacharyya(i).num_helix==index_Euclidean_bhattacharyya(i).num_helix))&& ((index_angle_bhattacharyya(i).num_stick==index_deltaLength_bhattacharyya(i).num_stick) && (index_angle_bhattacharyya(i).num_stick==index_Euclidean_bhattacharyya(i).num_stick))
        vote_matrix_bhattacharyya_helix=[vote_matrix_bhattacharyya_helix  index_angle_bhattacharyya(i).num_helix];
        vote_matrix_bhattacharyya_stick=[vote_matrix_bhattacharyya_stick  index_angle_bhattacharyya(i).num_stick];
        
    end
end

size_vote=size(vote_matrix_bhattacharyya_helix);

c=1;
remove_helix_bhattacharyya=[];
remove_stick_bhattacharyya=[];
for i=1:size_vote(2)
    remove_helix_bhattacharyya(c)=vote_matrix_bhattacharyya_helix(i);
    remove_stick_bhattacharyya(c)=vote_matrix_bhattacharyya_stick(i);
    c=c+1;
end

end
