/* Problem 23
Q : use delete(key) method to delete a key value pair from associative array*/

program assoc_array_exercises();
  string assoc_arr[int];
initial begin
  assoc_arr[1]     = "Active";
  assoc_arr[2] = "Active";
  assoc_arr[3] = "Idle";
    foreach (assoc_arr[idx]) begin
      $display("Before deletion : %0d => %s ", idx, assoc_arr[idx]);
end
assoc_arr.delete(2);
foreach (assoc_arr[idx]) begin
      $display("After deletion : %0d => %s ", idx, assoc_arr[idx]);
end
end
endprogram 
/*Output:
Before deletion : 1 => Active 
Before deletion : 2 => Active 
Before deletion : 3 => Idle 
After deletion : 1 => Active 
After deletion : 3 => Idle */
