/* Problem 20
Q : Reverse the elements in the queue */

program queue_exercises();
int unsigned queue[$];
initial begin
queue = '{1,2,3,4};
for(int i =0,int j = $size(queue)-1;i<j;i++,j--)begin
automatic int t = queue[i];
queue[i] = queue[j];
  queue[j] = t;
end
$display("Reversed queue : %p",queue);
end
endprogram 
