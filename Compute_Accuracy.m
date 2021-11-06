function [ Accuracy ] = Compute_Accuracy( final_correspondence,topology_file,helix_number,number_all_helix )
count=0;
for i=1:number_all_helix
    x=final_correspondence(i,1);
    y=final_correspondence(i,2);
    for i=1:number_all_helix
        if topology_file(i,1)==x && topology_file(i,2)==y          
            count=count+1;            
        end
    end
end
Accuracy=(count/helix_number)*100;

end

