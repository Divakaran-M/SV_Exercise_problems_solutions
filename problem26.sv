/* Problem 26
Q : Update the value of a key in associative array*/

program assoc_array_exercises();
  int assoc_arr[string];
initial begin
  assoc_arr["Core0"] = 70;
  assoc_arr["Core1"] = 65;
$display("%p",assoc_arr);
assoc_arr["Core0"] = 75;
$display("Core0 value updated to : %0d",assoc_arr["Core0"]);
end
endprogram 
/*Output:
'{"Core0":70, "Core1":65}
Core0 value updated to : 75*/
