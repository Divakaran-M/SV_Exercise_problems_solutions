/* Problem : 30
Q : Find minimum and maximum value in associative array with its key*/

program assoc_arr;
  int assoc [string];
  int max ;
  int min ;
 string first;
string max_key;
string min_key;
  initial begin
    assoc["ZoneA"] = 25; 
    assoc["ZoneB"] = 30;
    assoc["ZoneC"]=22;
if(assoc.first(first)) begin
min = assoc[first];
max = assoc[first];
end
    foreach(assoc[i]) begin
     if(assoc[i] >max)begin
          max = assoc[i];
      end 
    if(assoc[i] < min) begin
         min = assoc[i];
end 
     end
    
    foreach(assoc[i])begin
      if (assoc[i] == max ) max_key = i;
      if(assoc[i] == min) min_key = i;
    end
    $display("Min Temp: %s = %0d",min_key,min);
    $display("Max Temp: %s = %0d",max_key,max);

  end
endprogram
/*Output:
Min Temp: ZoneC = 22
Max Temp: ZoneB = 30*/
