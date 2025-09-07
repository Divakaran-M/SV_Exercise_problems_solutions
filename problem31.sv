/* Problem : 31
Q  : To put and get an element from mailbox  using mailbox.put() and mailbox.get() */
program mailbox_problems;
mailbox #(int) mbx;
int temp;
  int value = 100;
initial begin
mbx = new();
  $display("Send : %0d",value);
 mbx.put(value);
  mbx.get(temp);
$display("Received Temperature: %0d",temp);
end
endprogram
/* Output:
Send : 100
Received Temperature: 100*/
