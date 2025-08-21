/* Problem 15
Q : Insert element 999 at index 2 in the given queue*/

program queue_max();
int unsigned queue[$];
initial begin
queue = '{101, 102, 103, 104, 105};
$display("Original queue : %p",queue);
$display("Inserting 999 at index 2");
queue.insert(2,999);
$display("After inserted :%p ",queue);
end
endprogram 
/* Output:
Original queue : '{101, 102, 103, 104, 105}
Inserting 999 at index 2
After inserted :'{101, 102, 999, 103, 104, 105} */
