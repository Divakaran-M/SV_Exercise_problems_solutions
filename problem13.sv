/* Problem 13 
Q: Add the elements in a queue */

program queues();
int unsigned queue[$];
int unsigned total =0;
initial begin
queue = '{120, 80, 200, 150, 50};
for (int i = 0;i <=$size(queue);i++)begin
total += queue[i];
end
  $display("Sum of elements in the Queue = %0d",total);
end
endprogram 
