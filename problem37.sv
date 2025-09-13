/* Problem : 37
Scenario: 
Two UART channels have their own mailboxes for receiving data separately. 
Sample Input: 
Ch1 send: 42 
Ch2 send: 84 
Expected Output: 
Ch1 Received: 42 
Ch2 Received: 84 
Interview Twist: Candidate should explain difference between having two mailboxes vs. a single 
mailbox with tagged messages.*/

program mailbox_problems;
  mailbox #(int) mbx_ch1;
  mailbox #(int) mbx_ch2;
initial begin
    int pkt_ch1, pkt_ch2;
    mbx_ch1 = new();
    mbx_ch2 = new();
        mbx_ch1.put(42);
        $display("Ch1 send: 42");
        mbx_ch2.put(84);
        $display("Ch2 send: 84");
        mbx_ch1.get(pkt_ch1);
        $display("Ch1 Received: %0d", pkt_ch1);
        mbx_ch2.get(pkt_ch2);
        $display("Ch2 Received: %0d", pkt_ch2);  
  end
endprogram
/* Output:
# KERNEL: Ch1 send: 42
# KERNEL: Ch2 send: 84
# KERNEL: Ch1 Received: 42
# KERNEL: Ch2 Received: 84*/
