/*Problem 16
Q : Delete particular element in the queue(unknown index)*/

program queue_max();
int unsigned queue[$];
int unsigned delete;
initial begin
queue = '{201, 202, 203, 202, 204};
delete = 202;
foreach(queue[i])begin
if(delete == queue[i])begin
queue.delete(i);
end
end
$display("Updated Queue : %p",queue);
end
endprogram 
/* Output:
Updated Queue : '{201, 203, 204}*/
