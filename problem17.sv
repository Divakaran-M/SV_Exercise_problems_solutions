/*Problem 17
Q :display the elements in the queue using foreach*/

program queue();
int unsigned queue[$];
initial begin
queue = '{501,502,503};
foreach(queue[i])begin
$display("Packet : %0d",queue[i]);
end
end
endprogram 
