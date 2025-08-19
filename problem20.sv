/* Problem 20
Q : Reverse the elements in the queue */

program queue_exercises();
int unsigned queue[$];
initial begin
queue = '{1,2,3,4};
  queue.reverse();
$display("Reversed queue : %p",queue);
end
endprogram 
/* Output:
Reversed queue : '{4, 3, 2, 1}*/
