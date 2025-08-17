/* Problem 11
Q : Enqueue and Dequeue using .push-back and .pop_front functions*/

program queue();
int unsigned queue[$];
initial begin
queue.push_back(5);
  $display("After Enqueue 5 : %p",queue);
queue.push_back(10);
  $display("After Enqueue 10 : %p",queue);
queue.pop_front();
  $display("Dequeued Packet :  5 " );
$display("Queue after Dequeue: %p",queue);
end
endprogram
