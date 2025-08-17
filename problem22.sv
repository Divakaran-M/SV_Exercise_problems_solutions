// Problem 22
// Dispaly MAC Address table using Associative array 
program assoc_array_exercises();
  int assoc_arr[string];
initial begin
  assoc_arr["AA:BB:CC:DD:EE:01"] = 1;
  assoc_arr["AA:BB:CC:DD:EE:02"] = 5;
  assoc_arr["AA:BB:CC:DD:EE:03"] = 3;
    foreach (assoc_arr[idx]) begin
      $display("%s => Port  : %0d ", idx, assoc_arr[idx]);
end
end
endprogram 
