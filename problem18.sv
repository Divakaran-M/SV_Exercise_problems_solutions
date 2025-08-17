/* Problem 18
Q : Dequeue the elements in the queue while displaying it*/

program de_queue();
int unsigned queue[$];
int unsigned dequeue;
int unsigned i;
initial begin
//Enqueue 1,2,3
queue = '{1,2,3};
i = 0;
  while(queue.size()>0)begin
dequeue = queue.pop_front();
$display("Dequeued : %0d",dequeue);
end

end
endprogram 
