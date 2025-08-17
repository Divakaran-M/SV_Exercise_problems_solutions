/* Problem 27
Q : Use queue as value and string as key in the associative array*/

program assoc_array_exercises();
  int assoc_arr[string][$];
initial begin
assoc_arr["VLAN 10"] = '{101,102};
assoc_arr["VLAN 20"] = '{201};
$display(" Before :%p",assoc_arr);
 assoc_arr["VLAN 10"].push_back(103);
 assoc_arr["VLAN 20"].push_back(202);
  $display("After : %p",assoc_arr);
end
endprogram 
