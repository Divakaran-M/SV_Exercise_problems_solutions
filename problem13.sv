/* Problem 13 
Q: Add the elements in a queue */

program queues();
int unsigned queue[$];
int unsigned total;
initial begin
queue = '{120, 80, 200, 150, 50};
 total = queue.sum();
  $display("Sum of elements in the Queue = %0d",total);
end
endprogram 
