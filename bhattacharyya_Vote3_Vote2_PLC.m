function [ result_heuristic ] = bhattacharyya_Vote3_Vote2_PLC(size_end,conflict_stick,conflict_helix,flag_conflict,first_angle_helix,extend_angle_helix,first_angle_stick,extend_angle_stick,first_deltaLength_helix,extend_deltaLength_helix,first_deltaLength_stick,extend_deltaLength_stick,first_Euclidean_helix,extend_Euclidean_helix,first_Euclidean_stick,extend_Euclidean_stick,helix_number,stick_number,count,paired_matrix)

clc;
ok=0;

[index_angle_bhattacharyya,bhattacharyya_answer_angle]=compute_angle_bhattacharyya(extend_angle_helix,extend_angle_stick,helix_number,stick_number);
[index_deltaLength_bhattacharyya,bhattacharyya_answer_deltaLength]=compute_deltaLength_bhattacharyya(extend_deltaLength_helix,extend_deltaLength_stick,helix_number,stick_number);
[index_Euclidean_bhattacharyya,bhattacharyya_answer_Euclidean]=compute_Euclidean_bhattacharyya(extend_Euclidean_helix,extend_Euclidean_stick,helix_number,stick_number);

fix_helix_number=helix_number-1;

%vote2_algorithm_bhattacharyya
[vote2_matrix_bhattacharyya,remove_helix_bhattacharyya_2,remove_stick_bhattacharyya_2] = vote2_algorithm_bhattacharyya(index_angle_bhattacharyya,index_deltaLength_bhattacharyya,index_Euclidean_bhattacharyya);


%vote3_algorithm_bhattacharyya
[vote3_matrix_bhattacharyya,remove_helix_bhattacharyya_3,remove_stick_bhattacharyya_3 ] = vote3_algorithm_bhattacharyya(index_angle_bhattacharyya,index_deltaLength_bhattacharyya,index_Euclidean_bhattacharyya);

b2=isempty(vote2_matrix_bhattacharyya);
b3=isempty(vote3_matrix_bhattacharyya);


if (b2==1) && (b3==1)  % condition for recall PLC
    
    % recall PLC  (with one minimum)
    [min,least_helix,least_stick] = Principle_least_conflict_1( index_angle_bhattacharyya,index_deltaLength_bhattacharyya,index_Euclidean_bhattacharyya,fix_helix_number );
    
    conflict_helix=least_helix;
    conflict_stick=least_stick;
    flag_conflict=true;
    
    paired_matrix(count,1)=least_helix;
    paired_matrix(count,2)=least_stick ;
    count=count+1;
    
    
    % ***************************************************************
    % if necessary insert here:
    % if conflict detected with plc no true toplogy select second min
    % insert here the code namely select_plc2
    % ****************************************************************
    
    
    % one PLC pair from one of the plc1 or plc2 is find and reduce
    [reduced_angle_helix_plc,reduced_deltaLength_helix_plc,reduced_Euclidean_helix_plc] =compute_reduce_helix_plc(conflict_helix,helix_number,extend_angle_helix,extend_deltaLength_helix,extend_Euclidean_helix);
    [reduced_angle_stick_plc,reduced_deltaLength_stick_plc,reduced_Euclidean_stick_plc] =compute_reduce_stick_plc(conflict_stick,stick_number,extend_angle_stick,extend_deltaLength_stick,extend_Euclidean_stick);
    
    
    s_matrix=size(reduced_angle_helix_plc);
    
    switch s_matrix(1)
        case 1
            result_heuristic = paired_matrix;
            
        case 2
            a=reduced_angle_helix_plc(1,2);
            b=reduced_angle_stick_plc(1,2);
            paired_matrix(count,1)=a;
            paired_matrix(count,2)=b;
            result_heuristic = paired_matrix;
            
        otherwise
            
            %check (least_helix,least_stick) ismember nist then insert to paired
            size_pair=size(paired_matrix);
            for t=1:size_pair(1)
                c1=ismember(least_helix,paired_matrix(t,1));
                c2=ismember(least_stick,paired_matrix(t,2));
            end
            
            if c1==0 && c2==0
                ssize=size(least_helix);
                ss=ssize(2);
                
                for h=1:ss
                    paired_matrix(count,1)=least_helix(h);
                    paired_matrix(count,2)=least_stick (h);
                    count=count+1;
                end
            end
            extend_angle_helix =[reduced_angle_helix_plc];
            extend_deltaLength_helix=[reduced_deltaLength_helix_plc];
            extend_Euclidean_helix=[reduced_Euclidean_helix_plc];
            
            extend_angle_stick =[reduced_angle_stick_plc];
            extend_deltaLength_stick=[reduced_deltaLength_stick_plc];
            extend_Euclidean_stick=[reduced_Euclidean_stick_plc];
            
            helix_number=s_matrix(1);
            stick_number=s_matrix(1);
            
            
            [result_heuristic]=bhattacharyya_Vote3_Vote2_PLC(size_end,conflict_stick,conflict_helix,flag_conflict,first_angle_helix,extend_angle_helix,first_angle_stick,extend_angle_stick,first_deltaLength_helix,extend_deltaLength_helix,first_deltaLength_stick,extend_deltaLength_stick,first_Euclidean_helix,extend_Euclidean_helix,first_Euclidean_stick,extend_Euclidean_stick,helix_number,stick_number,count,paired_matrix);
            
    end   %Switch
    
else  % if vote2 or vote3 not empty
    
    if b3==0 
      ssize=size(remove_helix_bhattacharyya_3);
     ss=ssize(2);
    for h=1:ss
        paired_matrix(count,1)=remove_helix_bhattacharyya_3(h);
        paired_matrix(count,2)=remove_stick_bhattacharyya_3(h);
        paired_matrix(count,3)=3;
        count=count+1;
    end   
    else        
   
      ssize=size(remove_helix_bhattacharyya_2);
      ss=ssize(2);
    for h=1:ss
        paired_matrix(count,1)=remove_helix_bhattacharyya_2(h);
        paired_matrix(count,2)=remove_stick_bhattacharyya_2(h);
        paired_matrix(count,3)=2;
        count=count+1;
    end  
    
    end
end  
  
if (b3==0) 
    % compute_reduce_helix & stick matrix in bhattacharyya method
    [reduced_angle_helix_bhattacharyya,reduced_deltaLength_helix_bhattacharyya,reduced_Euclidean_helix_bhattacharyya ] = compute_reduce_helix_bhat(remove_helix_bhattacharyya_3,helix_number,extend_angle_helix,extend_deltaLength_helix,extend_Euclidean_helix);
    [reduced_angle_stick_bhattacharyya,reduced_deltaLength_stick_bhattacharyya,reduced_Euclidean_stick_bhattacharyya ] =compute_reduce_stick_bhat(remove_stick_bhattacharyya_3,stick_number,extend_angle_stick,extend_deltaLength_stick,extend_Euclidean_stick) ;   
    
    
    % ******************* insert conflict pair to matrix again ************
    
%     if  flag_conflict==true
%         [flag_conflict,ReExtend_angle_helix,ReExtend_deltaLength_helix,ReExtend_Euclidean_helix] =compute_insert_helix_conflict(flag_conflict,conflict_helix,helix_number,first_angle_helix,reduced_angle_helix_bhattacharyya,first_deltaLength_helix,reduced_deltaLength_helix_bhattacharyya,first_Euclidean_helix,reduced_Euclidean_helix_bhattacharyya);
%         [flag_conflict,ReExtend_angle_stick,ReExtend_deltaLength_stick,ReExtend_Euclidean_stick] =compute_insert_stick_conflict(flag_conflict,conflict_stick,stick_number,first_angle_stick,reduced_angle_stick_bhattacharyya,first_deltaLength_stick,reduced_deltaLength_stick_bhattacharyya,first_Euclidean_stick,reduced_Euclidean_stick_bhattacharyya);
%         
%         reduced_angle_helix_bhattacharyya=ReExtend_angle_helix
%         reduced_angle_stick_bhattacharyya=ReExtend_angle_stick
%         reduced_deltaLength_helix_bhattacharyya=ReExtend_deltaLength_helix
%         reduced_deltaLength_stick_bhattacharyya=ReExtend_deltaLength_stick
%         reduced_Euclidean_helix_bhattacharyya=ReExtend_Euclidean_helix
%         reduced_Euclidean_stick_bhattacharyya=ReExtend_Euclidean_stick
%         %  repeat_number= repeat_number+1;
%         
%     end
%     
    % ************************
    
    s_matrix=size(reduced_angle_helix_bhattacharyya);
    
    switch s_matrix(1)
        case 1
            result_heuristic = paired_matrix;
            
        case 2
            a=reduced_angle_helix_bhattacharyya(1,2);
            b=reduced_angle_stick_bhattacharyya(1,2);
            paired_matrix(count,1)=a;
             paired_matrix(count,2)=b;
             paired_matrix(count,3)=3;
            result_heuristic = paired_matrix;
            
            
        otherwise
            
            
            extend_angle_helix =[reduced_angle_helix_bhattacharyya];
            extend_deltaLength_helix=[reduced_deltaLength_helix_bhattacharyya];
            extend_Euclidean_helix=[reduced_Euclidean_helix_bhattacharyya];
            
            extend_angle_stick =[reduced_angle_stick_bhattacharyya];
            extend_deltaLength_stick=[reduced_deltaLength_stick_bhattacharyya];
            extend_Euclidean_stick=[reduced_Euclidean_stick_bhattacharyya];
            
            helix_number=s_matrix(1);
            stick_number=s_matrix(1);
            
            [result_heuristic] =bhattacharyya_Vote3_Vote2_PLC (size_end,conflict_stick,conflict_helix,flag_conflict,first_angle_helix,extend_angle_helix,first_angle_stick,extend_angle_stick,first_deltaLength_helix,extend_deltaLength_helix,first_deltaLength_stick,extend_deltaLength_stick,first_Euclidean_helix,extend_Euclidean_helix,first_Euclidean_stick,extend_Euclidean_stick,helix_number,stick_number,count,paired_matrix);
            
    end
    
else % if vote3 is not ok (b3==1) and vote2 is ok
    
    [reduced_angle_helix_bhattacharyya,reduced_deltaLength_helix_bhattacharyya,reduced_Euclidean_helix_bhattacharyya ] = compute_reduce_helix_bhat(remove_helix_bhattacharyya_2,helix_number,extend_angle_helix,extend_deltaLength_helix,extend_Euclidean_helix);
    [reduced_angle_stick_bhattacharyya,reduced_deltaLength_stick_bhattacharyya,reduced_Euclidean_stick_bhattacharyya ] =compute_reduce_stick_bhat(remove_stick_bhattacharyya_2,stick_number,extend_angle_stick,extend_deltaLength_stick,extend_Euclidean_stick)  ;  
 
     s_matrix=size(reduced_angle_helix_bhattacharyya);
    
    switch s_matrix(1)
        case 1
            result_heuristic = paired_matrix;
            
        case 2
            a=reduced_angle_helix_bhattacharyya(1,2);
            b=reduced_angle_stick_bhattacharyya(1,2);
            paired_matrix(count,1)=a;
             paired_matrix(count,2)=b;
             paired_matrix(count,3)=3;
            result_heuristic = paired_matrix;
            
            
        otherwise
            
            
            extend_angle_helix =[reduced_angle_helix_bhattacharyya];
            extend_deltaLength_helix=[reduced_deltaLength_helix_bhattacharyya];
            extend_Euclidean_helix=[reduced_Euclidean_helix_bhattacharyya];
            
            extend_angle_stick =[reduced_angle_stick_bhattacharyya];
            extend_deltaLength_stick=[reduced_deltaLength_stick_bhattacharyya];
            extend_Euclidean_stick=[reduced_Euclidean_stick_bhattacharyya];
            
            helix_number=s_matrix(1);
            stick_number=s_matrix(1);
            
            [result_heuristic] =bhattacharyya_Vote3_Vote2_PLC (size_end,conflict_stick,conflict_helix,flag_conflict,first_angle_helix,extend_angle_helix,first_angle_stick,extend_angle_stick,first_deltaLength_helix,extend_deltaLength_helix,first_deltaLength_stick,extend_deltaLength_stick,first_Euclidean_helix,extend_Euclidean_helix,first_Euclidean_stick,extend_Euclidean_stick,helix_number,stick_number,count,paired_matrix);
            
    end
   
  end  % if vote3 is ok (b3==0)


return;
end




