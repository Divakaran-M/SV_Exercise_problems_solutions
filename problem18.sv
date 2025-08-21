/* Problem 18
Q : Dequeue the elements in the queue while displaying it*/

program de_queue();
int unsigned queue[$];
int unsigned dequeue;
int unsigned i;
initial begin
//Enqueue 1,2,3
queue = '{1,2,3};
  $display("Before Dequeue:%p",queue);
i = 0;
  while(queue.size()>0)begin
dequeue = queue.pop_front();
$display("Dequeued : %0d",dequeue);
end
  $display("After Dequeued:%p",queue);
end
endprogram 
/* Output:
Before Dequeue:'{1, 2, 3}
Dequeued : 1
Dequeued : 2
Dequeued : 3
After Dequeued:'{}*/
