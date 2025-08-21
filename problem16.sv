/*Problem 16
Q : Delete particular element in the queue(unknown index)*/

program queue_max();
int unsigned queue[$];
int unsigned delete;
initial begin
queue = '{201, 202, 203, 202, 204};
delete = 202;
for (int i = queue.size()-1; i >= 0; i--) begin
  if (queue[i] == delete)
    queue.delete(i);
end
$display("Updated Queue : %p",queue);
end
endprogram 
/* Output:
Updated Queue : '{201, 203, 204}*/
