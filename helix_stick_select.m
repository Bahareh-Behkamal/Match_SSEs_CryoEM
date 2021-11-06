for i=1:HelixNumber    % HelixNumber
   % p=[]
    p=result_helix(i).Mat
    s1=size(p)
    for j=1:number_Stick    %number_Stick
        % q=[]
        q=result_stick(j).Mat
         s2=size(q)
       if s1(1)>s2(1)   
           bigger=s1(1)
           cnt=s1(1)/s2(1) 
       else bigger=s2(1)
       end
        for k=1:bigger
            q(k,:)=result_stick(j).Mat(k,:)   % construct q matrix (min*3)
            k=k+cnt
        end
        
        d=bhattacharyya(p,q)     % compute bhattacharyya distance
      distance(i,j)= d
      disp(distance)
    end
    result_distance(i).Mat=distance

    
end
  