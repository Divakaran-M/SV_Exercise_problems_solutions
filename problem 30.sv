/* Problem : 30
Q : Find minimum and maximum value in associative array with its key*/

program assoc_arr;
  int assoc [string];
  int max ;
  int min ;
string max_key;
string min_key;
  initial begin
    assoc["ZoneA"] = 25; 
    assoc["ZoneB"] = 30;
    assoc["ZoneC"]=22;
    max = assoc.max()[0];/* built in function assoc.max() 
    returns array containing maximum values,
    but we want only one maximum integer,
    so take 0th element from the array
    by indicating assoc.max()[0] and 
    store it in a int variable*/
    min = assoc.min()[0];
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
