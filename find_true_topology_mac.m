function [mac_true_angle_helix,mac_true_angle_stick,mac_true_deltaLength_helix,mac_true_deltaLength_stick,mac_true_Euclidean_helix,mac_true_Euclidean_stick] = find_true_topology_mac (angle_helix,angle_stick,deltaLength_helix,deltaLength_stick,Euclidean_helix,Euclidean_stick,fix_helix_number,helix_number,index_angle_mac,index_deltaLength_mac,index_Euclidean_mac,topology_file_t)

mac_true_angle_helix=[];
mac_true_angle_stick=[];
mac_true_deltaLength_helix=[];
mac_true_deltaLength_stick=[];
mac_true_Euclidean_helix=[];
mac_true_Euclidean_stick=[];

len=length(topology_file_t);

disp('****************************');
k=0;
for i=1:fix_helix_number
    
    h1=angle_helix((index_angle_mac(i).num_helix+1),1)
    s1=angle_stick((index_angle_mac(i).num_stick+1),1)
    
    for j=1:len
        if (h1==topology_file_t(1,j)) && (s1==topology_file_t(2,j))
            k=k+1;
            mac_true_angle_helix(k)=h1
            mac_true_angle_stick(k)=s1
        end
    end
end

disp('****************************');
k=0;
for i=1:fix_helix_number
    
    
    h1=deltaLength_helix((index_deltaLength_mac(i).num_helix+1),1)
    s1=deltaLength_stick((index_deltaLength_mac(i).num_stick+1),1)
    
    for j=1:len
        if (h1==topology_file_t(1,j)) && (s1==topology_file_t(2,j))
            k=k+1;
            mac_true_deltaLength_helix(k)=h1
            mac_true_deltaLength_stick(k)=s1
            
            
        end
    end
end

 disp('****************************');   
    k=0;
    for i=1:fix_helix_number
        
        
        h1=Euclidean_helix((index_Euclidean_mac(i).num_helix+1),1)
        s1=Euclidean_stick((index_Euclidean_mac(i).num_stick+1),1)
        
        for j=1:len
            if (h1==topology_file_t(1,j)) && (s1==topology_file_t(2,j))
                k=k+1;
                mac_true_Euclidean_helix(k)=h1
                mac_true_Euclidean_stick(k)=s1
            end
        end
    end
    
    
    
end