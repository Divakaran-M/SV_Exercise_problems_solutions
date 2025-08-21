/* Problem 19
Q : deep copy of queue*/

program dequeue();
int unsigned queue1[$];
  int unsigned queue2[$];
initial begin
  queue1 ='{11,12,13}; 
  foreach(queue1[i])begin
    queue2[i] = queue1[i];
  end
  $display("Queue 1 : %p",queue1);
  $display("Queue 2 :%p", queue2);
end
endprogram 
/* Output:
Queue 1 : '{11, 12, 13}
Queue 2 :'{11, 12, 13}*/
