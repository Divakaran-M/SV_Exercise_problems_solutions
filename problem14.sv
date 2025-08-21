/* Problem 14
Q : Find maximum number in the queue*/

program queue_max();
int unsigned queue[$];
int unsigned max;
initial begin
queue = '{12, 35, 42, 18, 29, 50, 31};
foreach(queue[i])begin
if(max<queue[i])begin
max = queue[i];
end
end
$display("Maximum number is : %0d",max);
end
endprogram 
/* Output:
Maximum number is : 50*/
