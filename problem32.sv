/* Problem : 32
Q : To get output from mailbox in FIFO order*/

program mailbox_problems;
mailbox #(int) mbx;
int unsigned queue[$];
initial begin
mbx = new();
queue ='{128, 256, 512, 1024, 2048};
$display("Send : %p",queue);
  for(int i=0;i<queue.size();i++)begin
mbx.put(queue[i]);
$display("Received Size :%0d",queue[i]);
end
end
endprogram
/*Output:
Send : '{128, 256, 512, 1024, 2048}
Received Size :128
Received Size :256
Received Size :512
Received Size :1024
Received Size :2048*/
