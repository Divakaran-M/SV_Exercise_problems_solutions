/* Problem 25
Q : Count total key value pairs in the associative array*/

program assoc_array_exercises();
  string assoc_arr[string];
int total;
initial begin
assoc_arr["user1"] = "Admin";
assoc_arr["user2"] = "Viewer";
assoc_arr["user3"] = "Tester";
assoc_arr["user4"] = "Admin";
  foreach(assoc_arr[user])begin
if(assoc_arr.exists(user))begin
total += 1;
end
end 
$display("Total Registered Users : %0d",total);
end
endprogram 
/* Output:
Total Registered Users : 4*/
