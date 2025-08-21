/* Problem 24
Q : Use exists() function to check a key exist in associative array or not*/

program assoc_array_exercises();
  string assoc_arr[string];
string ip;
initial begin
assoc_arr["192.168.1.1"] = "RouteA";
assoc_arr["192.168.1.10"] = "RouteB";
ip = "192.168.1.10";
if(assoc_arr.exists(ip))begin
$display("IP %s Found : TRUE",ip);
end
else begin
$display("IP %s Found : False",ip);
end
end
endprogram 
/*Output:
IP 192.168.1.10 Found : TRUE*/
