/* Problem : 29
Q: Use delete() with no arguments to delete entire array*/

program assoc_arr;
  string assoc [int];
  initial begin
    assoc[1] = "valid"; 
    assoc[2] = "invalid";
$display("Before clear:%p",assoc);
assoc.delete();
    $display("After clear:%p",assoc);

  end
endprogram
/* Output:
Before clear:'{1:"valid", 2:"invalid"}
After clear:'{}*/
