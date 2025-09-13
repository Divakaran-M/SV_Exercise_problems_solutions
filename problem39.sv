/* Problem : 39
Scenario: 
Mailbox depth is 2. Third send should block unƟl a slot frees up.
Sample Input: 
Send TX1 (free slots 1) 
Send TX2 (free slots 0) 
Send TX3 (blocks unƟl RX1)
Expected Output: 
TX1 Sent 
TX2 Sent 
TX3 WaiƟng...
RX1 Received → TX3 Sent 
Interview Twist: Candidate should know about bounded mailbox creaƟon: mailbox #(int) mbx = 
new(2);*/

program mailbox_problems;
  mailbox #(string) mbx;
  string msg;
 initial begin
    mbx = new(2);
    mbx.put("TX1");
    $display("[%0t] TX1 Sent", $time);
 mbx.put("TX2");
 $display("[%0t] TX2 Sent", $time);
    #10 mbx.get(msg);
      $display("[%0t] RX1 Received: %s", $time, msg);
    mbx.put("TX3");
    $display("[%0t] TX3 Sent", $time);
  end
endprogram
  /* Output:
  KERNEL: [0] TX1 Sent
# KERNEL: [0] TX2 Sent
# KERNEL: [10] RX1 Received: TX1
# KERNEL: [10] TX3 Sent*/
