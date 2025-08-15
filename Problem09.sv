program init();
  int unsigned assoc[int];
  int arr[];
  int high=0;
  int num;
initial begin
  arr = '{1,2,3,2,4,2,1,3,3,3};
  
  for(int i=0;i<$size(arr);i++)begin 
    automatic int temp = arr[i];    
    if(assoc.exists(temp))begin 
      assoc[temp]++;    
    end 
    else begin
      assoc[temp]=1;
    end 
  end
  
  foreach(assoc[i])begin
    if(assoc[i]>high)begin
      high = assoc[i];
      num = i;
    end
  end

  $display("Most Frequent Mode: %0d (Count = %0d)",num,high);
 
  
end
  endprogram
