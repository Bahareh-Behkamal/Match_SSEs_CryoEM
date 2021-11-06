function [ index_Length_match ] = compute_Length_match(length_structure,helix_number)


for i=1:helix_number
        index_Length_match(i).num_helix=length_structure(i).helix_id;
        index_Length_match(i).num_stick=length_structure(i).stick_id;
end
end

