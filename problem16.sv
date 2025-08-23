/*Problem 16
Q : Delete particular element in the queue(unknown index)*/

program queue_delete();
int unsigned queue[$];
int unsigned delete;
initial begin
queue = '{201, 202, 203, 202, 204};
delete = 202;
  for(int idx = 0; idx < queue.size(); idx++) begin
if(queue[idx] == delete) begin
queue.delete(idx);
idx--;
end
end
$display("Updated Queue : %p",queue);
end
endprogram 
/* Output:
Updated Queue : '{201, 203, 204}*/
